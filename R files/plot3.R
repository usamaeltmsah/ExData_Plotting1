source("/media/usama/F/NTL/Data Science/4.ExData_plotting/ExData_Plotting1-master/R files/plot1.R")
library(ggplot2)
Sub_metering_1 <- data[7]
Sub_metering_2 <- data[8]
Sub_metering_3 <- data[9]

Sub_metering_1 <- as.vector(t(Sub_metering_1))
Sub_metering_1 <- suppressWarnings(as.numeric(Sub_metering_1))

Sub_metering_2 <- as.vector(t(Sub_metering_2))
Sub_metering_2 <- suppressWarnings(as.numeric(Sub_metering_2))

Sub_metering_3 <- as.vector(t(Sub_metering_3))
Sub_metering_3 <- suppressWarnings(as.numeric(Sub_metering_3))

df <- data.frame(x = Sub_metering_1[con], y= Sub_metering_2[con], z = Sub_metering_3[con], l = d1)

#ggplot(df, aes(l)) + geom_line(aes(y = x, colour = "Sub_metering_1")) + geom_line(aes(y = y, colour = "Sub_metering_2")) +  geom_line(aes(y = z, colour = "Sub_metering_3")) + ylab("Energy sub metering")
par(mfrow=c(1))
plot(d1, Sub_metering_1[con], type="l", col="black", ylab = "Energy sub metering", xlab = "")
lines(d1, Sub_metering_2[con], col="red")
lines(d1, Sub_metering_3[con], col="blue")
legend("topright", lty=1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device
  
#legend("topright", pch = 20, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

