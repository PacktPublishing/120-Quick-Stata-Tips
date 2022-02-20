*Load training data
sysuse auto

*Reression with a polynomial
reg price mpg c.length##c.length 
vif

*Centering or demeaning polynomials variables
egen mean_length = mean(length)
generate demeaned_length = length - mean_length

*Demeaned polynomial regression
reg price mpg c.demeaned_length##c.demeaned_length  
vif
