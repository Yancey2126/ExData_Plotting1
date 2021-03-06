

# Construct plot 2
source("Week1_Load_Data.R")

dev.cur()

with(energe_use, plot(Time, Global_active_power, 
                         type = "l",
                         xlab = "",
                         ylab = "Global Active Power (in kilowatts)",
                         cex.lab = 0.7, cex.axis = 0.8))

dev.copy(png,'plot2.png',  width = 480, height = 480)
dev.off()

