*Load training auto
sysuse auto

*Polynomial regression
regress price c.mpg##c.mpg##c.mpg length

*Margins computation
margins, at(mpg=(12(1)41))

*Plot margins
marginsplot
