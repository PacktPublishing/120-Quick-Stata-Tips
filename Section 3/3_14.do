*Load training data
sysuse auto

*Regression with beta option
regress price mpg weight length, beta

*User written stdBeta
stdBeta, se


