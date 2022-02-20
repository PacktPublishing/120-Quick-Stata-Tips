*Comments in do-files
sysuse auto

/* Long comments
over many lines
can be placed in delimiters */

summarize // Notes within a command

describe /// Long comments in command lines
price

*Change end-of-line delimiter
#delimit ;
regress price
	mpg trunk weight
	i.rep78 i.foreign,
	beta
	;

*Reset end-of-line delimeter
#delimit cr
