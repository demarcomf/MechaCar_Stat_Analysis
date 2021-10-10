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
