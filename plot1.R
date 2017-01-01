source("common.R")

dataset <- loadDataset("../household_power_consumption.txt")

# Open the png graphics device.
png("plot1.png", height = 480, width = 480)

# Plot the Global_active_power histogram.
hist(
  dataset$Global_active_power,
  col = "red",
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)"
)

# Close the png graphics device.
dev.off()