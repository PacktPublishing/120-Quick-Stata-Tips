*Load training data
sysuse auto

*Verify that foreign is coded to 0 or 1
assert foreign == 0 | foreign == 1

*Verify that foreign is coded between 0 and 20000
assert inrange(price,0,20000)

*Verify that there is one observation per make
bys make: assert _N==1

*Verify that rep78 has no missing values
assert !missing(rep78)
