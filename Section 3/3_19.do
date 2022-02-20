*Load training data
sysuse auto, clear

*Regression without constant
reg price mpg length, nocons

*Add values to explanatory variables
gen mpg2 = mpg + 21
gen length2 = length + 187  

*New regression with readjusted covariates
reg price mpg2 length2
