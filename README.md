# MechaCar Statistical Analysis (Module 15)

## Overview
AutosRU is developing a new prototype vehicle, the MechaCar. Data has been collected on various factors which impact the mpg and the suspension. This analysis performs a statistical analysis against these factors to determine how they impact the MechaCar.

### Resources
**Input**: MechaCar_mpg.csv, Suspension_Coll.csv <br/>
**Software**: R, RStudio <br/>
**Output**: GitHub ReadMe <br/>

## Results
The following are the results of the statistical analysis.

### Deliverable 1: Linear Regression to Predict MPG
A linear regression analysis was run against the MPG data. Using a signicance level of 0.05 the results show that vehicle weight, spoiler angle and AWD likely have little to no statistical impact on MPG, while vehicle length and ground clearance do have a statistical impact on MPG. The overall p-value for the linear regression is very small (5.3x10^-11) which indicates that the slope of the regression line is not zero (indicating a corelation between the factors and MPG). In addition the r-squared value is high (0.71) whcih indicates a strong overall correlation between the data and the MPG. The full results of the linear regression are below for reference. 

![MPG Linear Regression](https://github.com/mhorstman/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/MPG_Linear_Regression.png)

### Deliverable 2: Summary Statistics on Suspension Coils
An analysis was run against the suspension datat to ensure the variance of the suspension coils not exceed 100 pounds per square inch per the design specifications for the MechaCar suspension coils. When looking at all manufacturing lots together the variance is less than 100 PSI and therefore within design specifications. However when looking at the 3 manufacturing lots individually Lot 1 & 2 have very small variances which are well within the design specifications (variance = 1.0 and 7.5 respectively), but Lot 3 exceeds the variance and needs to be examined in more detail (variance = 170.3). The full summary statistics for suspension PSI are below for reference.

![Suspension Total Summary](https://github.com/mhorstman/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/Suspension_total_summary.png)

![Suspension Lot Summary](https://github.com/mhorstman/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/Suspension_lot_summary.png)

### Deliverable 3: T-Test on Suspension Coils
Further analysis was run against each of the lots to see if they were statistically different than the overall population. 
- Lot 1 & 2: The p-value for lots 1 and 2 (1.6x10^-11 and 5.9x10^-4 respectively) were lower than the significance level and therefore are statistically similar to the overall population. 
- Lot 3: The p-value for lot 3 (0.16) was much higher than the significance level and therefore IS statistically different than the overall population. The full t-test results are below for reference.

![Suspension Lot1](https://github.com/mhorstman/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/Suspension_lot1_ttest.png)

![Suspension Lot1](https://github.com/mhorstman/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/Suspension_lot2_ttest.png)

![Suspension Lot1](https://github.com/mhorstman/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/Suspension_lot3_ttest.png)

### Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Summary
