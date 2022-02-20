*Load training data
sysuse auto

*Browse data
browse price mpg weight

*Row statistics
egen rowmean = rowmean(price mpg weight)
egen rowmedian = rowmedian(price mpg weight)
egen rowsd = rowsd(price mpg weight)
