png("Plot2.png",width=480,height=480)
plot(powerSubset$DateTime,
     powerSubset$Global_active_power,
     type = "n",
     main = "",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
lines(powerSubset$DateTime,
      powerSubset$Global_active_power,
      type = "l")
dev.off()