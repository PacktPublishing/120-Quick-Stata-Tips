*Load training data
sysuse nlsw88

*Scatterplot with opaque colors
tw (sc hours wage, mcolor(%25)) 

*Histogram with opaque colors
tw (hist wage if union == 0, color(red%40)) (hist wage if union == 1, color(green%40))

*Range plot with area shading and opaque colors
sysuse sp500
twoway (rarea high low date in 1/60, color(maroon%50)) (rarea open close date in 1/60, color(dknavy%50))
