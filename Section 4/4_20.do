*Open training data
sysuse nlsw88

*Regression
regress wage hours i.industry, coeflegend

*Post-regression computation
di _b[3.industry]*2
