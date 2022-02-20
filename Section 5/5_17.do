*Load training data
sysuse auto

*Graph with note 
scatter price mpg, note(Price vs MPG)
scatter price mpg, note(Price vs MPG, ring(0) pos(1) size(*2) color(white) box bcolor(dknavy))
