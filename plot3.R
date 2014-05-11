png("plot3.png")
data <- read.table("household_power_consumption.txt", header=T, sep=";")
data_needed <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
plot(as.numeric(as.character(data_needed$Sub_metering_1)), type="l", ylab="Energy sub metering", xlab="", xaxt="n")
lines(as.numeric(as.character(data_needed$Sub_metering_2)), col="red", pch=".")
lines(as.numeric(as.character(data_needed$Sub_metering_3)), col="blue", pch=".")
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
axis(1, at=c(1,length(as.numeric(as.character(data_needed$Global_active_power)))/2+1,length(as.numeric(as.character(data_needed$Global_active_power)))), labels=c("Thu","Fri","Sat"))
dev.off()