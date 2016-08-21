png("Plot3.png",width=480,height=480)
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
dev.off()