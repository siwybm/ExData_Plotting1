#This script plots the 4 combined graphs into plot4.png file.

#opening and generating dataset 
source("load_data.R")


#4th plot
#Setting device, size and number of graph boxes.
png(filename="plot4.png", width=480, height=480, units="px", bg="transparent")
par(mfrow=c(2,2))

#Plot 1,1
plot(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Global_active_power), type="l", ylab="Global Active Power", xlab="")

#Plot 1,2
plot(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Voltage), type="l", ylab="Voltage", xlab="datetime")

#Plot 2,1
#Plotting first variable and adding 2 others marked in different colors.
plot(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
points(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Sub_metering_2), type="l", col="red")
points(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Sub_metering_3), type="l", col="blue")
#Creating legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),  lty=1, box.lty=0)
#Fixing the graph frame, after the frame of legend was cleared.
box(lty=1)

#Plot 2,2
plot(x=strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S"), y=as.double(data$Global_reactive_power), type="l" , ylab="Global_reactive_power", xlab="datetime")
dev.off()
