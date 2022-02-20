*Load trainig data
sysuse auto

*Correlation table as graph
corrtable price mpg trunk weight length
corrtable price mpg trunk weight length, n pval half
