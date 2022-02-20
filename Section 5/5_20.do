*Load training data
sysuse auto 

*Histogram with boxplot
histbox mpg
histbox mpg, mean bin(20)
