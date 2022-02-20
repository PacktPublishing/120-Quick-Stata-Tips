*Set return message on
set rmsg on

*Load training data
sysuse nlsw88, clear

*Complex regression
logit union c.(hours wage)##i.race 
