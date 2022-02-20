*Load training data
sysuse auto

*Graph with custom Red, Green, Blue colors
tw (sc price mpg, mcolor("255 0 0"))

*Graph with custom Cyan, Magenta, Yellow, Black colors
tw (sc price mpg, mcolor("255 255 0 0"))
tw (sc price mpg, mcolor("1 1 0 0"))

*Graph with custom Hue, Saturation, Luminance colors
tw (sc price mpg, mcolor("hsv 180 1 1"))

