house_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
subset_data <- house_data[house_data$Date %in% c("1/2/2007","2/2/2007") ,]
png(file="plot1.png", width=480, height=480)
hist(as.numeric(subset_data$Global_active_power),col = "red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
dev.off()