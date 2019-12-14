# Reflections

## Strengths
Similar to the Python dashboard, our R dashboard kept many of the useful features from milestone 2 to make our app easy to use and easy to understand: 
1.    Dataset introduction in Tab 1 gives users the background information and explains the purposes of our dashboard.
2.    The drop-down window and range slider bar in Tab 2 allows users to select the stock(s) and time range of interest to explore historical prices.
3.    Interactivity between the drop-down window and the second chart in Tab 2.
4.    The slider bar and explanations in Tab 3 help users further understand the returns of financial investments. 

## Improvements 

1.    In the first tab, we added a drop-down window and a year slider bar that interacts with the data table. By choosing different companies and time range, the table below will only show information of the selected companies within the selected time range. In addition, users now can scroll the table and sort the table by different columns to take a closer look at the dataset. This interactivity gives users the flexibility to explore the dataset on their own.
2.    In the `historical stock price chart` on Tab 2 of our Python dashboard, we did not provide a vertical line that allows the user to compare stock prices at particular date. In our R app, we implemented this feature to enhance the interactivity of the chart. When the user hovers his/her mouse horizontally across the chart, the chart will automatically display the stock price and information of all companies on the date where the mouse stopped at. This makes the comparison of different stock prices on the same date much easier.    
3.    As brought out by the TA feedback, it would be better if the format of x-axis of the first plot of Tab2 could be consistent when selecting different time ranges. Thanks to `ggplot2`, the format of x-axis label won’t change no matter what time range the user selects. 

## Weakness/Future Improvements
1.    It takes a while for our app to load, and this is beyond our capability to solve at this point due to the time constraint and technical limitations. 
2.    We also noticed that the graphs render differently on different laptops. For example, in the second chart of Tab 2, the label of x-axis appears to be chopped out on some laptops while it shows well on other laptops. Although we are looking at the same dashboard, there seems to be some inconsistency in performance and display format depending on the device used. This could be some technical issues related to Dash, `ggplotly`, browser settings, and operating systems. It is beyond our capabilities to solve during this project. 

If we have more time, we would like to try speeding up the loading process and solve the performance discrepancy issues.
