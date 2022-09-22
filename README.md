# Mechacar_Statistical_Analysis

A demonstration of R and it's statistical test capabilities.

# Overview
-------------------
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.   For each statistical analysis, you’ll write a summary interpretation of the findings.  


# Results
--------------
## Linear Regression To Predict MPG
![](Images/deliverable%20one.png)
Q1.Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* Methodology: Each Pr(>|t|) value in the summary above represents the probability that each coefficient contributes a random amount of variance to the linera model
* Using MechaCar_mpg data set(vehicle_length, ground _clearance, and intercept) arevstatistically unlikely to provide random amounts of variance to the linera model. **Vehicle_length and ground_clearance have a significant impact.**


Q2.Is the slope of the linear model considered to be zero? Why or why not?
* Methodology: examine the Pr(>|t|) value in the summary above for the intercept.
*  **The intercept IS statistically  significant (less than 0.05) and not zero.**
*  This would indicate that the intercept explains a significant amount of variabilty in the dependent variable when all independent variables are equal to zero.This could mean that the significant features may need scaling or transforming to help improve the predictive power of this model. There can also be other variables that can help explain the  variability of our dependent variable(mpg) that haven't been included.
   
Q3.Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* Methodology: Examine multiple R-squared values that indicate how well the regression model approximates real world data points. In most cases the value will range between 0 and 1. This can be used as a probability metric to determine the likelihood that future data points will fit the model.
*  The multiple R-squared value is **0.71**. The p-value significance is very small **indicating the model does an adequate job of predicting mpg.**

## Summary Statistics on Suspension Coils

Q1.Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* Methodology: examin the mean and median variance in total and for each lot to determine if the variance is within the 100 pounds per square inch(PSI).

* In the total_summary as shown below the total specification **Are Met with a variance of 62.29 or less than 100.**
![](Images/Total_summary.png)

* **Lots 1 & 2 are within specifications.While lot 3 has a variance that exceeds the 100 PSI.** 
![](Images/Lot%20Summary.png)

## T-Tests on Suspension Coils

Q1. Are the manufacturing lots (all and each individually) statistically different from the population mean of 1,500 pounds per square inch.
* Methodology: perform a t.test using PSI and mu of 1500. Evaluate the resulting p-value for a significance using a 0.05 level of significance.
![](Images/sample%20t.test.png)
* All lots are not significantly different from the population mean with a p-value of .06.

![](Images/lot%201%20t.test.png)
* Lot 1 is not significantly different from the population mean with a p-value of 1.
  
![](Images/lot%202%20t.test.png)
* Lot 2 is not significantly different from the population mean with a p-value of 0.61.

![](Images/lot%203%20t.test.png)
* Lot 3 **IS** significantly different from the mean population with a p-value of 0.042.

## Study Design: MechaCar vs Competition

* Metrics to be used in an additional statistical study between Mechacar and their competition could be city or highway fuel efficiency and horse power.
* A null hypothesis could be that the horse power of a vehicle does not directly effect the fuel efficiency of that vehicle. Where as the alternative hypothesis would be that the horse power of that vehicle does  effect the fuel efficiency.
* I would use the linear regression model because it can be used used to predict a continuous dependent variable based on one or more independent variables. We can also use this to create visualizations for the data to show the client.
* We could look at data for the fuel efficiency(city vs. hwy), horsepower, vehicle make/model, vehicle length, and vehicle weight to be included in this study.
  
  

