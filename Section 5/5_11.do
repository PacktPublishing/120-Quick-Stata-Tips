*Load training data
sysuse auto, clear

*A normal regression
reg price mpg headroom trunk weight length i.rep78

*Margins
margins, dydx(*)
marginsplot, recast(scatter) yline(0)

*Plot all coefficients
coefplot, xline(0)

*Four regressions with two dependent variables
reg price mpg headroom trunk weight length i.rep78 if foreign == 0
estimate store foreign
reg price mpg headroom trunk weight length i.rep78 if foreign == 1
estimate store domestic
reg turn mpg headroom trunk weight length i.rep78 if foreign == 0
estimate store foreign_t
reg turn mpg headroom trunk weight length i.rep78 if foreign == 1
estimate store domestic_t

*Coefplot for 4 regression
coefplot foreign domestic, bylabel(Price) || foreign_t domestic_t, bylabel(Turn) ||, drop(_cons *rep*) xline(0) byopts(xrescale)
