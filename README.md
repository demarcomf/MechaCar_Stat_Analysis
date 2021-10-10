# MechaCar_Stat_Analysis

## Linear Regression to Predict MPG

**Question 1**: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? <br />
**Answer 1**: Vehicle length, ground clearance, and vehicle weight. All three of these had annotations(***) of their p-values being extremely small.

**Question 2**: Is the slope of the linear model considered to be zero? Why or why not? <br />
**Answer 2**: No. Independent variables had significant impact on dependents, which impacted the overall slope.

**Question 3**: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? <br />
**Answer 3**: R-squared value: 0.7149. 71.5% prediction success would be considered effective. 

![Deliverable 1 Screenshot](https://github.com/demarcomf/MechaCar_Stat_Analysis/blob/main/Deliverable%201%20Screenshot.PNG)

## Summary Statistics on Suspension Coils

**Question**: Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? <br />
**Answer**: Total variance is 76.23459 due to the fact that Lot3 is struggling to meet design specs. Lot1 and Lot2 have variances between 10.13 and 1.14, while Lot3 is hitting 220.01. In order to bring the manufacturing PSI value, Lot3 needs to either stop entirely, or take notes from Lot1 and 2.

![Total Summary DF](https://github.com/demarcomf/MechaCar_Stat_Analysis/blob/main/Total%20Summary%20Table.PNG)

![Lot Summary DF](https://github.com/demarcomf/MechaCar_Stat_Analysis/blob/main/Lot%20Summary%20Dataframe.PNG)

## T-Tests on Suspension Coils

**Summary**: There is not a statistical difference in mean worth mentioning between the 3 lots and the general population in measure PSI.

![T-Test Screenshot](https://github.com/demarcomf/MechaCar_Stat_Analysis/blob/main/T-Test%20Screenshot.PNG)


