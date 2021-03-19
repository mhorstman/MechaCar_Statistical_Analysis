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
