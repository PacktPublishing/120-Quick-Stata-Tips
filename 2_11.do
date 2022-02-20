*Load training data
sysuse auto

*Generate dummies from rep78
tab rep78, gen(dummy)

*Summarize dummy variables
tab1 dummy*
