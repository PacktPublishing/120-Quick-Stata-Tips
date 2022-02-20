*Load training data
sysuse auto

*Regression
regress price weight foreign##c.mpg

*leverage-vs-residual squared plot
lvr2plot, mlabel(make)

*DFBETA
predict dfb, dfbeta(weight)

*display dfbetas
sort dfb
gen id = _n
tw (sc dfb id, mlabel(make))
