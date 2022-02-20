*Load training data
sysuse auto

*Regression
regress price mpg length turn weight trunk foreign
matrix v = e(V)

*Plotmatrix
plotmatrix, m(v)
plotmatrix, m(v) nodiag lower freq legend(off)
