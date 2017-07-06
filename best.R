
best <- function(state, outcome){
x <- read.csv("outcome-of-care-measures.csv", colClasses= "character")
states <- x[ ,7]
nam <- c("heart attack", "heart failure", "pneumonia")
if ((state %in% states)==F) {stop("invalid state")}
if ((outcome %in% nam)==F) {stop("invalid outcome")}
if (outcome =="heart attack") {n <- 11} 
if (outcome =="heart failure") {n<-17} 
if (outcome =="pneumonia") {n<-23} 
data <- x[which(x$State==state), ] 
newData <- as.numeric(data[ ,n])
bad <- is.na(newData)
newData1 <- data[!bad, ]

mean <- as.numeric( newData1[ ,n])
name1 <- which (mean == min(mean))
hospital <- newData1[name1, 2 ]
if (length(hospital)>1) {hospital.sort <- hospital[order(hospital), ]
hospital.sort[1]}
else
{hospital}
}



