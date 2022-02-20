*Load training data
sysuse auto

*Violin plot
vioplot mpg, over(rep78)

*Violin plot with non-default bandwidth
vioplot mpg, over(rep78) bwidth(5)
