*Load training data
sysuse auto

*Polar smoothing
polarsm price mpg

*Polar smoothing with 75 percentile
polarsm price mpg, regcmd(qreg, q(.75))

*Polar smoothing over foreign
polarsm price mpg, over(foreign) 
