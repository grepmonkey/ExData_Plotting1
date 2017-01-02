source("common.R")

# See common.R file for the implementation.
dataset <- loadDataset("../household_power_consumption.txt")

# Open the png graphics device.
png("plot4.png", height = 480, width = 480)

# Set 2 rows by 2 columns layout.
par(mfrow = c(2, 2))

# See common.R file for the implementation.
plotGlobalActivePower(dataset, xlab = "", ylab = "Global Active Power")
plotVoltage(dataset, xlab = "datetime", ylab = "Voltage")
plotEnergySubmetering(dataset, xlab = "", ylab = "Energy sub metering")
plotGlobalReactivePower(dataset, xlab = "datetime", ylab = "Global_reactive_power")

# Close the png graphics device.
dev.off()