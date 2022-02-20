*Load training data
sysuse auto

*Install grstyle
ssc install grstyle, replace
ssc install palettes, replace
ssc install colrspace, replace

*Exemplar graph
scatter price mpg

*Initialise and customise
grstyle init
grstyle color background white
grstyle symbol p circle_hollow

*Exemplar graph
scatter price mpg

*Clear 
grstyle clear
