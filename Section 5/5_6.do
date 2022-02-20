*Load training data
use https://www.stata-press.com/data/r16/lifeexp, clear

*Graph with log x-axis
scatter lexp gnppc, xscale(log) xlabel(100 1000 10000 100000)

*Load training data
webuse grunfeld

*Graph without log scale
xtline invest, overlay legend(off)

*Graph with log scale
xtline invest, overlay yscale(log) ylabel(1 10 100 1000) legend(off)




