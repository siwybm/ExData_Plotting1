#This script plots the x,y graph of Global Active Power variable into plot2.png file.

#opening and generating dataset 
source("load_data.R")

#2nd plot
#Setting device, size and number of graph boxes.
png(filename="plot2.png", width=480, height=480, units="px")
par(mfrow=c(1,1))

plot(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
