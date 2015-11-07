## This R file will load the required data by calling power-data-load.R and then plots the data in graphic file
## as per the requirement. If the data is already loaded in the context you can comment the data load line

source("power-data-load.R")
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()