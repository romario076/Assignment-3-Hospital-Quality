rankall - function(outcome, num){
x - read.csv(outcome-of-care-measures.csv, colClasses= character)
source(rankhospital.R)
states - levels(as.factor(x$State))
names - vector()
for (i in states) {
names[i] - rankhospital(i, outcome, num)
}
new - data.frame(hospital= names, state= states)
new
}


