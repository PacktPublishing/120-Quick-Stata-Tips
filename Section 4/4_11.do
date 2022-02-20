*Download infromation from internet in loop
forvalues i = 1/1000 {
	clear
	wordfreq using https://www.cnbc.com
	sleep 1000
	di as text "cycle " as result `i'
}
