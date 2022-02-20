*Clear
clear

*Load training data
sysuse auto

*Summary statistics
DESCRIBE
SUMMARIZE

*Regression 
REG PRICE MPG WEIGHT I.REP78
