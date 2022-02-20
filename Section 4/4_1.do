*Load training data
sysuse auto

*Regression
quietly forvalues i = 1/5 {
	reg price mpg if rep78 == `i'
	estimates store a`i'
}

*Table
esttab a1 a2 a3 a4 a5, b(3) se(3) compress 
