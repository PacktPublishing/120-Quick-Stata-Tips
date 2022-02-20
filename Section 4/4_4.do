*Load training data
sysuse auto

*Start log
capture log close
capture log using log.log, replace

*Summarize
summarize
