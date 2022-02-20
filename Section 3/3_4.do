*Load training data
sysuse auto, clear

*Summarize and expand data
summarize
expand 2
summarize

*Load training data
webuse hanley, clear
describe

*Weighted summary
su disease [fweight = pop]

*Use expand to weigh data
expand pop
su disease
