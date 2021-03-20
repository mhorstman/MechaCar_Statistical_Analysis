# Load R libraries
library(tidyverse)
library(dplyr)

# DELIVERABLE 1
# Import MechaCar_mpg.csv as a dataframe
mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)
  
# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)

# Determine the p-value and the r-sqared value using summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))


# DELIVERABLE 2
# Import Suspension_coil.csv as a table
suspension_df <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

# Crate the total_summary dataframe using summarize() to get the mean, median, variance 
# and standard deviation
total_sumary <- suspension_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create a lot_summary dataframe using group_by() and summarize() to group each manufacturing 
# lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# DELIVERABLE 3
# Determine if the PSI across all manufacturing lots is statistically different from the population mean
t.test(suspension_df$PSI)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean
suspension_lot1 <- subset(suspension_df, Manufacturing_Lot == 'Lot1')
suspension_lot2 <- subset(suspension_df, Manufacturing_Lot == 'Lot2')
suspension_lot3 <- subset(suspension_df, Manufacturing_Lot == 'Lot3')
t.test(suspension_lot1$PSI, mu=mean(suspension_df$PSI))
t.test(suspension_lot2$PSI, mu=mean(suspension_df$PSI))
t.test(suspension_lot3$PSI, mu=mean(suspension_df$PSI))
