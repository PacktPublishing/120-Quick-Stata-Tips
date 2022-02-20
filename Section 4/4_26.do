*Start command log file
cap cmdlog close
cmdlog using dolog.do, replace

*Load training data
sysuse auto

*Interactive session

*View dofile
doedit dolog.do

