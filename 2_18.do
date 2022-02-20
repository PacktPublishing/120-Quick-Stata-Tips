*Load training data
sysuse auto

*Summary
su price
display as text "The mean of price is = " as result r(mean)

*Regression
reg price mpg weight length
display as text "The effect of mpg is =" as error %9.2f _b[mpg]

