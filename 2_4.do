*Load training data
sysuse auto

*Describe non-loaded data on hard-drive
describe using "/Applications/Stata/ado/base/n/nlsw88.dta"

*Describe non-loaded data on internet
describe using "https://www.stata-press.com/data/r16/census"
