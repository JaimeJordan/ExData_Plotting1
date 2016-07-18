## Plot 2
## Convert data and time to specific format
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
png(filename = "./figures/plot2.png", width = 480, heigth = 480, units = "px")
## plot the figure
plot(data$DateTime, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")
## close device
dev.off()
