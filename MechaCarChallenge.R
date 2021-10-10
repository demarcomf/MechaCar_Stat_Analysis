#Deliverable 1
# 3. use the library function to load dplyr package
library(dplyr)

# 4. import and read in the mechacar csv file as a dataframe
mpg <- read.csv('Active Directory/MechaCar_mpg.csv',stringsAsFactors = F)

# 5. perform linear regression using the lm function, pass in all six variables, add the df created in step 4
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg)

# 6. using the summary function, determine the p value and the r squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg))


# Deliverable 1 Written Summary - Linear Regresion to Predict MPG
#Question 1: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
#Answer 1: Vehicle length, ground clearance, and vehicle weight. All three of these had annotations(***) of their p-values being extremely small.

#Question 2: Is the slope of the linear model considered to be zero? Why or why not?
#Answer 2: No. Independent variables had significant impact on dependents, which impacted the overall slope.

#Question 3: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
#Answer 3: R-squared value: 0.7149. 71.5% prediction success would be considered effective. 

#*insert screenshot of console outputs*

#Deliverable 2: Visualizations for Trip Analysis 

# 2. import and read the suspension coil file as a table
coils <- read.csv('Active Directory/Suspension_Coil.csv',stringsAsFactors = F)

# 3. script that creates total_summary dataframe using the summarize function to get the mean, median, variance, and stddev
total_summary <- coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# 4. write script that creates lot_summary df using the groupby and summarize functions to group manufacturing lot mean, median, variance, std dev
lot_summary <- coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 2 Questions
# Question: Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
# Answer: Total variance is 76.23459 due to the fact that Lot3 is struggling to meet design specs. Lot1 and Lot2 have variances between 10.13 and 1.14, while Lot3 is hitting 220.01. In order to bring the manufacturing PSI value, Lot3 needs to either stop entirely, or take notes from Lot1 and 2.


