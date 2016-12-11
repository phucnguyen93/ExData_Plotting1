house_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
subset_data <- house_data[house_data$Date %in% c("1/2/2007","2/2/2007") ,]
subset_data$Timestamp <-paste(subset_data$Date,subset_data$Time)
png(file="plot2.png", width=480, height=480)
plot(strptime(subset_data$Timestamp, "%d/%m/%Y %H:%M:%S"),as.numeric(subset_data$Global_active_power),type = "l", xlab="", ylab="Global Active power (kilowatts)")
dev.off()
