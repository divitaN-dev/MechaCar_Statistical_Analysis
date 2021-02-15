library(dplyr)
 
mecha_car_table <- read_csv("01_Demo/MechaCar_mpg.csv")

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=mecha_car_table)

summary(model)

suspension_coil_table <- read_csv("01_Demo/Suspension_Coil.csv")
total_summary <- suspension_coil_table %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI) , SD=sd(PSI), .groups="keep")
total_summary

lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI) , SD=sd(PSI), .groups="keep")
lot_summary

t.test(suspension_coil_table$PSI, mu=mean(suspension_coil_table$PSI))

t.test(suspension_coil_table$PSI, subset=suspension_coil_table$Manufacturing_Lot =="Lot1", mu=mean(suspension_coil_table$PSI))

t.test(suspension_coil_table$PSI, subset=suspension_coil_table$Manufacturing_Lot == "Lot2", mu=mean(suspension_coil_table$PSI))

t.test(suspension_coil_table$PSI, subset=suspension_coil_table$Manufacturing_Lot == "Lot3", mu=mean(suspension_coil_table$PSI))