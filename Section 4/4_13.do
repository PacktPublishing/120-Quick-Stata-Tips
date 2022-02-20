*Load training data
sysuse nlsw88, clear

*Generate 100 random variables
qui forvalues i = 1/200 {
	gen x`i' = rnormal()
}

*Set more on
set more on

*A regression with many variables
reg wage hours x*
