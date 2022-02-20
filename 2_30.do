*Clear
clear

*Load training data
sysuse auto

*Generate a new label variable with emojis
gen label = "🤖" if foreign == 0
replace label = "🎃" if foreign == 1

*Scatterplot
tw (scatter price mpg, mlabel(label) mlabpos(0) msym(none))

*Generate emoji data and then convert happy faces to numeric data
gen emoji = "😀" 
replace emoji = "🙁" in 30/74
gen happy = (emoji == "😀" )
tab happy
