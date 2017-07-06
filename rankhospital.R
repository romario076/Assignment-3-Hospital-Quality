rankhospital <- function(state, outcome, num){
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
n1 <- names(newData1)[n]
n2 <- names(newData1)[2]
name1 <- newData1[order(as.numeric(newData1[ ,n], newData1[ ,2])), ] 
##name1 <-newData1[ind, ]
##if (is.numeric(num) == TRUE) {
##if (num > nrow(newData1)) {return(NA)}}
##if (is.character(num) == TRUE) {
##if (num=="best") {num = 1} else
##if (num=="worst") {num = nrow(newData1)} }
hospital <- name1[num,2]
hospital
}
