png("plot2.png")
data <- read.table("household_power_consumption.txt", header=T, sep=";")
data_needed <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
plot(as.numeric(as.character(data_needed$Global_active_power)), type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")
axis(1, at=c(1,length(as.numeric(as.character(data_needed$Global_active_power)))/2+1,length(as.numeric(as.character(data_needed$Global_active_power)))), labels=c("Thu","Fri","Sat"))
dev.off()