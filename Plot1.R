

# Construct plot 1
source("Week1_Load_Data.R")

with(energe_use, hist(Global_active_power, col = "red", 
                         breaks = 15,
                         xlab = "Global Active Power (kilowatts)",
                         main = "Global Active Power",
                         ylim = c(0,1200)))

dev.copy(png,'plot1.png',  width = 480, height = 480)
dev.off()

