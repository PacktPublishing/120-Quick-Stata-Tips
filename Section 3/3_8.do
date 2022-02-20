*Load training data
sysuse auto

*Regression with and without baselevels
regress price mpg i.rep78
regress price mpg i.rep78, baselevel

*Set baselevels on
set showbaselevels on
regress price mpg i.rep78
