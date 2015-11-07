## This R file will load the required data by calling power-data-load.R and then plots the data in graphic file
## as per the requirement. 

source("power-data-load.R")
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 12)
     ##ylim = c(0, 1200))
dev.off()
