*Common use of forvalues loop
forvalues i = 0(1)10 {
	di `i'
}

*A loop of non-integer numbers
forvalues  i = 0 0.2 to 10  {
	di `i'
}
