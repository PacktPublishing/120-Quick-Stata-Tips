*Load training data
sysuse sp500

*Generate graph
twoway (rbar high low date in 1/60, color(maroon%50)) (rbar open close date in 1/60, color(dknavy%50))

*Export graph as svg
graph export graph1.svg, replace
