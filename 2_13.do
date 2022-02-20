*Load training data
sysuse auto

*Tabulate foreign
tab foreign
tab foreign, nol

*Add numlabel to foreign
describe
numlabel origin, add
tab foreign
