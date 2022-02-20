*Clear
clear

*Numlist examples

	*Custom list
foreach i of numlist 3 2 1 {
	di `i'
}

	*Custom list with automatic integer count
foreach i of numlist 3 2 1 1/10 {
	di `i'
}

	*Custom automatic count with integer automatic counts
foreach i of numlist 0(0.5)2.5 3/10 {
	di `i'
}

	*Multiple custom counts
foreach i of numlist 0(0.5)2.5 3(0.7)10 10(2.5)15{
	di `i'
}

	*Custom count a different way
foreach i of numlist 10 15:30 35[5]50 {
	di `i'
}

