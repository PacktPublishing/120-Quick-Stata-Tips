*A loop with custom dots
clear
set obs 100000

qui {
noi _dots 0
	qui forvalues i = 1(1)1000 {
		gen x`i' = rnormal()
		noi _dots `i' 0
		}
}
