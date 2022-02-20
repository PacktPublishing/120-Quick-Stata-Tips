*Simulate 0.5 correlated data
clear
matrix C = (1, .5 \ .5, 1)
corr2data x y, n(100) corr(C) 
corr y x

*Load auto training data an create similar data
clear
sysuse auto
corr price mpg length weight
matrix C = r(C)
corr2data y x1 x2 x3, n(74) corr(C) 

corr price mpg length weight 
corr y x1 x2 x3

