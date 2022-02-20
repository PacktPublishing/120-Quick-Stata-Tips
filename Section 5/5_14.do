*Load training data
sysuse sp500, clear

*Range plots
foreach i in rarea rbar rspike rcap rcapsym rscatter rline rconnected {
	twoway `i' high low date in 1/50, title(`i')nodraw
	graph save `i'.gph, replace
}

*Graph combine range plots
graph combine rarea.gph rbar.gph rspike.gph rcap.gph rcapsym.gph rscatter.gph rline.gph rconnected.gph, iscale(0.5)

*Opaque range plots
twoway (rbar high low date in 1/50, color(%50))  (rbar open close date in 1/50, color(%50))
