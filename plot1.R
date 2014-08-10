#This script plots the histogram of Global Active Power variable into plot1.png file.

#opening and generating dataset 
source("load_data.R")

#1st plot
#Setting device, size and number of graph boxes.
png(filename="plot1.png", width=480, height=480, units="px")
par(mfrow=c(1,1))

hist(as.double(data$Global_active_power), col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
