*Generate random dataset
set obs 1000
set seed 1234

*Generate x-variable
gen x = 1

*Draw random sample of 50
sample 50

*Split the sample into 3 random groups
splitsample, generate(svar) split(0.50 0.30 0.20) show

*Use randomly determined data to keep 50%
gen r = runiform()
keep if r > 0.5
