*Generate many random dummy variables
clear
set obs 100
set seed 1234

forvalues i = 1/5 {
	gen x`i' = (rnormal()>0)
}

*Generate a label and attach it
label define yesno 0 "No" 1 "Yes"
label values x* yesno

*Tabulate variables
tab1 x*

