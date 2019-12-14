# Reflections

## Strengths
Similar to the Python dashboard, our R dashboard is easy to use and easy to understand. 
1.	We kept the dataset introduction in Tab 1 that gives users the background information and purposes of our dashboard.
2.	We kept the drop-down window and range slider bar in Tab 2 that allows users to select the stock(s) and time range that they are interested to further explore.
3.	We also kept the interactivity between the drop-down window and the second chart in Tab 2.
4.	We kept the slider bar and explanations in Tab 3 to help users further understand financial investments.  

## Improvements 

1.	In the first tab, we added a drop-down window and a year slider bar that interacts with the table. By choosing different companies and time range, the table below will only show information of the companies selected within the time range selected. In addition, users now can scroll the table and sort the table by different columns to take a closer look at the dataset. This interactivity gives user more freedom in exploring the data.
2.	In the Python dashboard, in the first plot of Tab2, namely, the historical stock price chart, we did not provide a vertical line that could show all the values and labels of data points with the same x-axis value. However, in R we made this possible. When a user hovers his/her mouse on one single data point on the trend line, the interactive chart automatically shows all the values and labels of other data points sharing the same x-axis value. This makes comparison of different stock prices on the same day possible and much more easier. Previously, users can only compare the stock prices visually using the trend lines. Now they can look at the different stock prices at the same time and compare them quantitatively.   
3.	As said in the TA feedback that, it would be better if the format of x-axis of the first plot of Tab2 could be consistent when selecting different time ranges. Thanks to `ggplot2`, the format of x-axis label won’t change no matter what time range the user selects. 

## Weakness/Future Improvements
1.	It takes a while for our app to load, and this is beyond our capability to solve at this point due to the time constraint and technical limitations. 
2.	We also noticed that the graphs render differently in different laptops. For example, in the second chart of Tab 2, the label of x-axis appears to be chopped out on my laptop. However, the label works well in my teammates’ laptops. Although we are looking at the same dashboard, there seems to be some inconsistency in performance. This could be some technical issues related to Dash, `ggplotly`, browsers, and operating systems. It is beyond our capabilities to solve now. 

If we have infinite time, we would like to speed up the loading process and solve the performance discrepancy issues.


