*Load training data
sysuse auto

*Generate new variable with operators
gen test = 1 if rep78 == 3 | rep78 == 4 | rep78 == 5
replace test = 0 if rep78 == 1 | rep78 == 2

*Generate new variables with inlist
gen test2 = 1 if inlist(rep78, 3, 4, 5)
replace test2 = 0 if inlist(rep78, 1, 2)

*Compare two variables
compare test test2
