*Simulate data and logit regression
clear
set obs 2000000
set seed 1234

gen e = rnormal()

forvalues i = 1/10 {
gen x`i' = rnormal()
}
gen ystar = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 +x9 + x10 + e
gen y = (ystar>0)

logit y x*

*Compute marginal effects and time results
timer on 1
margins, dydx(*) atmeans
timer off 1
timer on 2
margins, dydx(x1) atmeans
timer off 2
timer on 3
margins, dydx(*) atmeans nose
timer off 3
timer on 4
mfx 
timer off 4

timer list
