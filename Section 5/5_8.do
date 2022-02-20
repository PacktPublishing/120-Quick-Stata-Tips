*Load training data
sysuse auto

*Scatterplot with two y-vars
tw (scatter price mpg) (scatter weight mpg)

*Scatterplot with two y-vars on two y-axes
tw (scatter price mpg) (scatter weight mpg, yaxis(2))

*Scatterplot with two y-vars and two x-vars on two y-axes and x-axes
tw (scatter price mpg) (scatter weight turn, yaxis(2) xaxis(2))
