library(plyr)
data<- read.csv("hw1_data.csv")
colnames(data)
##getting the first 2 rows
data[c(1,2),]

#how many rows
name <- row.names(data)
as.numeric(name)
#or use nrow function

#Extract the last 2 rows of the data 
data[c(152,153),]

##value of Ozone in the 47th row?
data[47,]

##how many missing values
na<-subset(data,is.na(Ozone))
nrow(na)

##mean of the Ozone column 
oz<-data$Ozone
value<- subset(data,!is.na(oz), select = Ozone)
apply(value,2,mean)
