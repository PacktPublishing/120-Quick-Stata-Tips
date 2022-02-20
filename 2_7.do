*Load training data
sysuse auto

*Check data signature
datasignature

*Set and confirm data signature
datasignature set
replace price = 4098 in 1
datasignature confirm
