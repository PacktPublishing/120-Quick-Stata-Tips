*Load training data
sysuse nlsw88

*Labelbook
labelbook

*Log the labelbook
log using labelbook.txt, replace text
labelbook, problems detail
