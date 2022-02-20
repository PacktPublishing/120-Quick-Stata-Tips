*Load trainig data
sysuse auto

*Example regression
regress price mpg 
estimates store a1
regress price mpg length
estimates store a2
regress price mpg length weight
estimates store a3

*Export regressions to Excel
outreg2 [a1 a2 a3] using test.xls, excel replace 

*Export regressions to Excel
outreg2 [a1 a2 a3] using test.doc, word replace 

*Export regressions to Excel
outreg2 [a1 a2 a3] using test.txt, text replace 
