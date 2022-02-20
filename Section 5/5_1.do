*Load training data
sysuse auto

*Generate graph
tw (sc price mpg, saving(graph.gph, replace))

*Clear data
clear

*Load graph
graph use graph.gph

*Extract data from graph
serset use
summarize

