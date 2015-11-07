## This R file will read the power consumption data and load the same as data frame inR
## Also the subset of data will be picked up as per the requirement
## date and time will be combined as a new variable and converted to POSIXlt using strptime function
## attach function is used include the data frame object in the R search path so that object can be easlity accesses

## please set the working directory and download the text file to that directory

library(sqldf)
filename <- getwd()
filename <- paste(filename,"/household_power_consumption.txt",sep="")

powerdata <- read.csv.sql(file=filename,'Select * from file where date IN("1/2/2007","2/2/2007")',sep=";")

dim(powerdata)

x <- paste(Date, Time)

powerdata$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

dim(powerdata) # 2880   10

closeAllConnections()

attach(powerdata)