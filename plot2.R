source("common.R")

# Open the png graphics device.
png("plot2.png", height = 480, width = 480)

# See common.R file for the implementation.
plotGlobalActivePower(loadDataset("../household_power_consumption.txt"))

# Close the png graphics device.
dev.off()