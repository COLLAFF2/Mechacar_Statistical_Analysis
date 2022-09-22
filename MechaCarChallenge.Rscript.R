library(dplyr)

# import csv file
MechaCar_mpg <- read.csv(file='./Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# perform linear regression using lm()
# lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) #generate multiple linear regression model

MechaCar_lm <-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_mpg)
MechaCar_lm

# view with summary
summary(MechaCar_lm)

# view R squared
summary(MechaCar_lm)$r.squared

#################### Deliverable 2 #################

# import csv file
Suspension_Coil <- read.csv(file='./Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# create a summary table
total_summary <- Suspension_Coil %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),std_dev=sd(PSI))
total_summary

# create lot_summary df
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),std_dev=sd(PSI))
lot_summary

################# Deliverable 3 ##############
# note level of significance is .05
# Ho : mu =1500
#Ha: mu<> 1500
t.test(Suspension_Coil$PSI,mu=1500)

# analysis os p-value (0.06) is greater than 0.05 therefore we fail to reject Ho

## t.test by lots
# Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# Lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)


# Lot 3
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

