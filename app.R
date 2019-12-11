## importing required libraries
library(dash)
library(dashCoreComponents)
library(dashHtmlComponents)
library(dashTable)
library(tidyverse)
library(plotly)
library(ggplot2)
library(tidyverse)
library(readxl)
library("cowplot")
library("gapminder")
library("ggridges") 
library("scales")

library(magick)
library(directlabels)
library(ggridges)
library(viridis)
theme_set(theme_half_open())

app <- Dash$new(external_stylesheets = "https://codepen.io/chriddyp/pen/bWLwgP.css")
# Use a function make_graph() to create the graph

# importing wrangled dataset

df <- read_csv("data/tab1.csv")

# stock history plot
make_graph1 <- function(df){
    plot1_tab1 <- df %>%
        ggplot(aes(x = date, y = price, group = company, color = company)) +
        geom_line() +
        ggtitle("Stock price change from 2000 to 2010") +
        labs(x = "Date",
            y = "Stock Price")
ggplotly(plot1_tab1)

}


# monthly price change plot


make_graph2 <- function(df){

plot2_tab1 <- df %>% 
    ggplot(aes(x = date, y = monthly_return, fill = (monthly_return > 0))) + 
    geom_bar(stat = "identity") +
    labs(x = "Date",
         y = "Monthly Change %",
         title = "Monthly price changes between 2000 and 2010") +
    scale_fill_manual(values = c("orange", "royalblue")) +
    theme(legend.title = element_blank(), legend.position = "none") +
    facet_wrap(~ company, nrow = 2) +
    panel_border() +
    background_grid()

    ggplotly(plot2_tab1)

                       }


# Now we define the graph as a dash component using generated figure
graph1 <- dccGraph(
  id = 'history-graph',
  figure=make_graph1(df) # gets initial data using argument defaults
)

graph2 <- dccGraph(
  id = 'monthly-graph',
  figure=make_graph2(df) # gets initial data using argument defaults
)



app$layout(
  htmlDiv(
    list(
        htmlH1("Price History"),
                htmlH2("From 2000 to 2010, Apple's stock price increased 760%." ),
                htmlH3("In this interactive chart below, you can visualize how the stocks of 5 major tech companies changed between 2000 and 2010." ),
                htmlP("Use the dropdown window to select the company you want to explore. Use the slide bar down the graph to select the time range.") ,
                graph1,
                graph2

              )
)
)
app$run_server()
