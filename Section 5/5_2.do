*Load trainig data
sysuse auto

*Various graphs
tw (scatter price mpg if foreign == 0 & rep78 == 4) (scatter price mpg if foreign == 0 & rep78 == 5, nodraw saving(graph1.gph, replace))
tw (scatter price mpg if foreign == 1 & rep78 == 4) (scatter price mpg if foreign == 1 & rep78 == 5, nodraw saving(graph2.gph, replace))

*Graph combine with two legends
graph combine graph1.gph graph2.gph, xcommon ycommon 

*Graph combine with one legend
grc1leg graph1.gph graph2.gph, xcommon ycommon 
