*Load training data
sysuse auto

*Set a scalar
scalar a = 10

*Set another scalar
su price 
scalar b = r(mean)

*Compute using scalars
di a*b
gen price2 = price - b
su price*

*List scalars
scalar list
