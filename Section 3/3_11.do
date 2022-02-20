*Load training data
sysuse auto

*Bootstrapped linear regression
bs, reps(100) seed(1234): regress price mpg weight

*Bootstrapped mean
bs, reps(100) seed(1234): mean price

*Bootstrapped logit regression
bs, reps(100) seed(1234): logit foreign price
