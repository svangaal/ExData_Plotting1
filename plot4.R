png("Plot4.png",width=480,height=480)
par(mfcol= c(2,2))
#Plot 1,1
plot(powerSubset$DateTime,
     powerSubset$Global_active_power,
     type = "n",
     main = "",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
lines(powerSubset$DateTime,
      powerSubset$Global_active_power,
      type = "l")

#Plot2,1
plot(powerSubset$DateTime,
     powerSubset$Sub_metering_1,
     type = "n",
     main = "",
     ylab = "Energy sub metering",
     xlab = "")
lines(powerSubset$DateTime,
      powerSubset$Sub_metering_1,
      type = "s",
      col = "black")
lines(powerSubset$DateTime,
      powerSubset$Sub_metering_2,
      type = "s",
      col = "red")
lines(powerSubset$DateTime,
      powerSubset$Sub_metering_3,
      type = "s",
      col = "blue")

#Plot1,2
plot(powerSubset$DateTime,
     powerSubset$Voltage,
     type = "n",
     main = "",
     ylab = "Voltage",
     xlab = "datetime")
lines(powerSubset$DateTime,
      powerSubset$Voltage,
      type = "l")

#Plot2,2
plot(powerSubset$DateTime,
     powerSubset$Global_reactive_power,
     type = "n",
     main = "",
     ylab = "Global_reactive_power",
     xlab = "datetime")
lines(powerSubset$DateTime,
      powerSubset$Global_reactive_power,
      type = "l")

dev.off()
