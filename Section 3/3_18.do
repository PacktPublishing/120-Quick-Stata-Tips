*Load training data
sysuse auto, clear

*Regression
regress price mpg i.rep78

*Margins with individual constrast
margins a.rep78
margins rep78, pwcompare
