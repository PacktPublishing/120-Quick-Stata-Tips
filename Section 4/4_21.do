*Load training data
sysuse auto

*Regression
reg price mpg i.foreign i.rep78, noci
reg price mpg i.foreign i.rep78, vsquish noci 
