*Start log file
cap log close
log using log.log, replace

*Date & time from macro
display as error "$S_DATE $S_TIME"

*Date & time from c-class
di as error "`c(current_date)' `c(current_time)'' `c(os)' `c(pwd)''"

*Close log
cap log close
