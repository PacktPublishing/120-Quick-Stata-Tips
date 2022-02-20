*Load training data
sysuse auto

*Histogram with custom bins
histogram mpg
histogram mpg, bin(20)
histogram mpg, width(1)

*Equal probability histogram
eqprhistogram mpg

*Unequal bins
hist3 price, v(3500(2000)9000,10000,18000) 
