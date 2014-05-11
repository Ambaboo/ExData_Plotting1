png("plot1.png")
data <- read.table("household_power_consumption.txt", header=T, sep=";")
data_needed <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
hist(as.numeric(as.character(data_needed$Global_active_power)), col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()