*Clear
clear

*Load training data
sysuse auto

*browse data
browse make

*Generate upper and lower case string data
gen UPPER = upper(make)
gen lower = lower(make)

*Rename all variables to upper and lower case
rename *, upper
rename *, lower
