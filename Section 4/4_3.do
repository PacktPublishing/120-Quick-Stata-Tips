*Load training data
sysuse auto

*Graph loop - no draw
forvalues i = 1/5 {
	graph tw (scatter price mpg if  rep78 == `i'), name(graphA`i', replace) nodraw
}

*Graph loop - set graph off
set graph off
forvalues i = 1/5 {
	graph tw (scatter price mpg if  rep78 == `i'), name(graphB`i', replace) 
}

*List graphs
graph dir
