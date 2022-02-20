*Download word frequency from a webpage
wordfreq using "https://www.lipsum.com/feed/html", clear

*Tab word frequency 
tab word 

*Wordfreq with a sleep loop for continuous updates
forvalues i = 1/1000000 {
	sleep 1000
	wordfreq using"https://www.lipsum.com/feed/html", clear
	di `i'
}
