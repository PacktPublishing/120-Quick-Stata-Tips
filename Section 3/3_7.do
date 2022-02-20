*Load training data
sysuse auto

*Regression
reg price mpg length weight

*Elasticity
margins, eyex(*)

*Semi-elasticity
margins, eydx(*)
margins, dyex(*)
