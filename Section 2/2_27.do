*Load training data
sysuse auto

*Using outreg2 to put summary into excel
outreg2 using test.xls, sum(log) replace

*Using xtable to put table into excel
xtable rep78 foreign, c(freq)
