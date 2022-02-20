*Load training data
sysuse auto, clear

*Tabulate
tab rep78 foreign 

*Browse Data
browse

*Contract data
contract foreign rep78, zero percent(per)
