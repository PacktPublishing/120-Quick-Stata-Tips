*Load training data
sysuse auto

*Constrain intercept to 0
regress price mpg weight, noconst

*Constrain slope parameter to -5
constraint 1 mpg = -5
cnsreg price mpg weight, constraints(1) 

*Constrain two slopes to be equal
constraint 2 mpg = weight
cnsreg price mpg weight, constraints(2) 


