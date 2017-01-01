source("common.R")

# Open the png graphics device.
png("plot3.png", height = 480, width = 480)

plotEnergySubmetering(loadDataset("../household_power_consumption.txt"))

# Close the png graphics device.
dev.off()