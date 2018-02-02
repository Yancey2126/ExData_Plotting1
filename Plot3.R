

# Construct plot 3
source("Week1_Load_Data.R")

dev.cur()

# Plot the first line with variable "Time" and "Sub_metering_1"
with(energe_use, plot(Time, Sub_metering_1, 
                      type = "l",
                      xlab = "",
                      ylab = "Energy sub metering",
                      cex.lab = 0.7))

# Add the other two lines for Sub_metering 2 and 3
lines(energe_use$Time, energe_use$Sub_metering_2, col = "red")
lines(energe_use$Time, energe_use$Sub_metering_3, col = "blue")

# Add the legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1,1,1), col = c("black","red", "blue"), cex = 0.9)

# Create the png file and copy the plot to it
dev.copy(png,'plot3.png',  width = 480, height = 480)
dev.off()

