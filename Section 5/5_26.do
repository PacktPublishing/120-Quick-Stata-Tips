*Clear
clear

*Load training data
sysuse auto

*Generate many graphs
tw (sc price mpg) (lfit price mpg, ytitle(Price) legend(off) saving(a1.gph, replace)  aspect(0.5) nodraw)

tw (sc price trunk) (lfit price trunk, ytitle(Price) legend(off) saving(a2.gph, replace)  aspect(0.5) nodraw)

tw (sc price weight) (lfit price weight, ytitle(Price) legend(off) saving(a3.gph, replace)  aspect(0.5) nodraw)

tw (sc price turn) (lfit price turn, ytitle(Price) legend(off) saving(a4.gph, replace)  aspect(0.5) nodraw)

tw (sc price displacement) (lfit price displacement, ytitle(Price) legend(off) saving(a5.gph, replace)  aspect(0.5) nodraw)

tw (sc price gear_ratio) (lfit price gear_ratio, ytitle(Price) legend(off) saving(a6.gph, replace)  aspect(0.5) nodraw)

*Graph combine
graph combine a2.gph a3.gph, col(2) saving(comb1.gph, replace)

graph combine a4.gph a5.gph a6.gph, col(3) saving(comb2.gph, replace)

graph combine a1.gph comb1.gph comb2.gph, row(3) iscale(0.5)

