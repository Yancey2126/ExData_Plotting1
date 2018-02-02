

# Construct plot 3
source("Week1_Load_Data.R")


dev.cur()
par(mfrow = c(2, 2))

# Plot the first one 
with(energe_use, plot(Time, Global_active_power, 
                      type = "l",
                      lwd = 0.5,
                      xlab = "",
                      ylab = "Global Active Power (in kilowatts)",
                      cex.lab = 0.7, cex.axis = 0.8))
# The second one 
with(energe_use, plot(Time, Voltage, 
                      type = "l",
                      lwd = 0.5,
                      xlab = "datetime",
                      ylab = "Voltage",
                      cex.lab = 0.7, cex.axis = 0.8))

# The third
with(energe_use, plot(Time, Sub_metering_1, 
                      type = "l",
                      lwd = 0.5,
                      xlab = "",
                      ylab = "Energy sub metering",
                      cex.lab = 0.7))

# Add the other two lines for Sub_metering 2 and 3
lines(energe_use$Time, energe_use$Sub_metering_2, col = "red")
lines(energe_use$Time, energe_use$Sub_metering_3, col = "blue")

# Add the legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1,1,1), col = c("black","red", "blue"), cex = 0.3)

# The fourth 
with(energe_use, plot(Time, Global_reactive_power, 
                      type = "l",
                      lwd = 0.5,
                      xlab = "datetime",
                      ylab = "Global_reactive_power",
                      cex.lab = 0.7, cex.axis = 0.8))

