library(sqldf)

#
# Loads the household power consumption data from a file.
# - merges Date and Time variables into a new DateTime variable
# - returns data for Feb 1, 2007 and Feb 2, 2007 only!
#
loadDataset <- function(file) {
  # Load the dataset from file - only keep data for Feb 1, 2007 and Feb 2, 2007.
  dataset <-
    read.csv2.sql(file,
                  sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                  header = TRUE,
                  na.strings = "?")
  
  # Merge Date and Time variables into a new DateTime variable.
  dataset$DateTime <-
    strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S")
  
  # Return the dataset.
  dataset
}

#
# Plots the Global Active Power.
#
plotGlobalActivePower <- function(dataset) {
  # Add the Global_active_power data.
  plot(
    dataset$DateTime,
    dataset$Global_active_power,
    pch = NA,
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
  )
  
  # Connect the Global_active_power points.
  lines(dataset$DateTime, dataset$Global_active_power)
}

#
# Plots the Energy Submetering.
#
plotEnergySubmetering <- function(dataset) {
  # Add the Sub_metering_1 data.
  plot(
    dataset$DateTime,
    dataset$Sub_metering_1,
    pch = NA,
    xlab = "",
    ylab = "Energy sub metering"
  )
  
  # Connect the Sub_metering_1 points.
  lines(dataset$DateTime, dataset$Sub_metering_1)
  
  # Add the Sub_metering_2 data.
  lines(dataset$DateTime, dataset$Sub_metering_2, col = "red")
  
  # Add the Sub_metering_3 data.
  lines(dataset$DateTime, dataset$Sub_metering_3, col = "blue")
  
  # Add the legend.
  legend(
    "topright",
    c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lty = c(1, 1, 1),
    col = c("black", "red", "blue")
  )
}

#
# Plots the Voltage.
#
plotVoltage <- function(dataset) {
  # Add the Voltage data.
  plot(
    dataset$DateTime,
    dataset$Voltage,
    pch = NA,
    xlab = "datetime",
    ylab = "Voltage"
  )

  # Connect the Voltage points.
  lines(dataset$DateTime, dataset$Voltage)
}

#
# Plots the Global Reactive Power.
#
plotGlobalReactivePower <- function(dataset) {
  # Add the Global_reactive_power data.
  plot(
    dataset$DateTime,
    dataset$Global_reactive_power,
    pch = NA,
    xlab = "datetime",
    ylab = "Global_reactive_power"
  )
  
  # Connect the Voltage points.
  lines(dataset$DateTime, dataset$Global_reactive_power)
}