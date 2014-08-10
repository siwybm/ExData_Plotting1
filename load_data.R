#This script loads the data set to the 'data' object. 

#Reading file (70,000 first rows include the relevant data)
#data<-read.table("exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", nrows=70000)
data<-read.table("exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", nrows=70000, colClasses="character")
#Converting dates to format of date
data$Date<-strptime(data$Date, "%d/%m/%Y")

#Reassign the date objecs, so that it includes the rows we are taking into account
d<-strptime(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
data<-data[which(data$Date %in% d),]
