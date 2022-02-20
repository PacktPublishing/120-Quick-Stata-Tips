*Clear
clear

*Load training data
sysuse nlsw88

*Regression on a subsample with predictions
reg wage age i.race grade if wage >  7

predict yhat1
predict yhat2 if e(sample)
predict yhat3 if e(sample)==0
su yhat?

*Generate sample variable
reg wage age i.race grade if wage >  7
gen sample1 = e(sample)
reg wage age i.race grade if wage <= 7
gen sample2 = e(sample)
reg wage age i.race grade union
gen sample3 = e(sample)
tab1 sample?
