*Load training data
sysuse nlsw88

*Regression with expansion
reg wage i.race i.occupation i.union

*Regression withm quick expansion
reg wage i.(race occupation union)

*Regression with quick expansion and interaction
reg wage i.(race occupation union)##i.(south)
