# Loads and cleans the data for the graphical analysis

# Environment
powerFile <- "./household_power_consumption.txt"

# Load the data
power <- read.csv(powerFile, 
                  sep = ";",
                  header = TRUE, 
                  na.strings = "?", 
                  stringsAsFactors = FALSE)
power$DateTime <- paste(power$Date,power$Time)
power$DateTime <- strptime(power$DateTime, "%d/%m/%Y %H:%M:%S")
power$Date <- as.Date(power$Date,format="%d/%m/%Y")
powerSubset <- subset(power, power$Date >= as.Date("2007-02-01") &
                        power$Date <= as.Date("2007-02-02"))

png("Plot1.png",width=480,height=480)
hist(powerSubset$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()

source("./plot2.R")
source("./plot3.R")
source("./plot4.R")