source("common.R")

# Open the png graphics device.
png("plot3.png", height = 480, width = 480)

# See common.R file for the implementation.
plotEnergySubmetering(
  loadDataset("../household_power_consumption.txt"),
  xlab = "",
  ylab = "Energy sub metering"
)

# Close the png graphics device.
dev.off()