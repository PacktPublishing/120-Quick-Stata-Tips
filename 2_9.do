*Load training data
sysuse auto
replace price = 4098 in 1
replace mpg = mpg/10

*Compare two datasets
cf * using "/Applications/Stata/ado/base/a/auto2.dta"

cf * using "/Applications/Stata/ado/base/a/auto2.dta", all 

cf * using "/Applications/Stata/ado/base/a/auto2.dta", verbose 
