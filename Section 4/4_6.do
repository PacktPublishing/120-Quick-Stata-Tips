*A complex loop that simulated and graphs data.
set graphics off
clear
set seed 12345
set obs 50
gen y = rnormal()
gen x = rnormal()
qui {
noi _dots 0
	qui forvalues i = 1(1)20 {
		local j=`j'+1
		qui tw (scatter y x in 1/`i', ylabel(-3(1)3) xlabel(-3(1)3))
		qui graph export graph`j'.png, as(png) replace
		noi _dots `i' 0
		}
}

*Shell command
shell /Users/buschaf/Downloads/ffmpeg -y  -r 25 -i  "/Users/buschaf/Downloads/graph%d.png" -c:v libx264 -vf fps=25 -pix_fmt yuv420p -r 25 graph.mp4
