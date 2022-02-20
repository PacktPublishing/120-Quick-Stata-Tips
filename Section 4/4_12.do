*Load training data
sysuse auto

*Set trace on
set trace on

*Commands with error
reg price mpg make truk

*Example 2
set trace on 
mean price, error

