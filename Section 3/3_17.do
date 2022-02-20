*Load training data
sysuse auto, clear

*Regression
regress price mpg ib(3).rep78

*Margins with individual constrast
margins r.rep78

*Plot coefficients on graph
marginsplot
