*Clear data
clear

*Load training data
sysuse auto

*High price
gen pricedummy = (price > 4500)

*Tabulate groups
tab rep78 pricedummy

*Naive way
gen group = .
replace group = 1 if rep78 == 1 & pricedummy == 0
replace group = 2 if rep78 == 2 & pricedummy == 0
replace group = 3 if rep78 == 3 & pricedummy == 0
replace group = 4 if rep78 == 4 & pricedummy == 0
replace group = 5 if rep78 == 5 & pricedummy == 0
replace group = 6 if rep78 == 1 & pricedummy == 1
replace group = 7 if rep78 == 2 & pricedummy == 1
replace group = 8 if rep78 == 3 & pricedummy == 1
replace group = 9 if rep78 == 4 & pricedummy == 1
replace group = 10 if rep78 == 5 & pricedummy == 1

*Fast way
egen group2 = group(pricedummy rep78), label

*Compare both group variables
tab1 group group2
compare group group2


