*Load training data
sysuse auto, clear

*Put summary statistics into Word document
asdoc sum, replace
 
*Put frequency table into Word document
asdoc tabulate rep78

*Put complex table into Word document
asdoc table rep78 foreign, c(mean mpg) format(%9.2f) center 

*Put regression into Word document
asdoc reg price mpg rep78, nest  
asdoc reg price mpg rep78 headroom, nest append
asdoc reg price mpg rep78 headroom weight, nest append
