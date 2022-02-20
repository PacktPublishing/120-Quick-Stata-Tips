*Load training data
sysuse auto

*Tabplot oneway
tabplot rep78, showval

*Tabplot twoway
tabplot foreign rep78, showval 

*Tabplot twoway fraction
tabplot foreign rep78, showval fraction

*tabplot threeway
gen dummy = (price > 7000)
tabplot foreign rep78, by(dummy) showval bfcolor(none)


