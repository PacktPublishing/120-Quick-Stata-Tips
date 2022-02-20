*Load training data
sysuse auto, clear

*Scatterplot
scatter mpg weight

*Scatterplot with reverse and opposite axes
scatter mpg weight, yscale(rev alt) xscale(rev alt)

*Scatterplot with axes off
scatter mpg weight, yscale(off) xscale(off)
