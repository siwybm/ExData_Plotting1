#This script plots the x,y graph of three Sub metering variables into plot3.png file.

#opening and generating dataset 
source("load_data.R")

#3rd plot
#Setting device, size and number of graph boxes.
png(filename="plot3.png", width=480, height=480, units="px")
par(mfrow=c(1,1))

#Plotting first variable and adding 2 others marked in different colors.
plot(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
points(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Sub_metering_2), type="l", col="red")
points(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Sub_metering_3), type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),  lty=1)
dev.off()
