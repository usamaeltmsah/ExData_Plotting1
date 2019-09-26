source("/media/usama/F/NTL/Data Science/4.ExData_plotting/ExData_Plotting1-master/R files/plot1.R")

Voltage <- data[5]
Voltage <- as.vector(t(Voltage))

Global_reactive_power <- data[4]
Global_reactive_power <- as.vector(t(Global_reactive_power))

par(mfrow=c(2,2))

plot(d1, Global_active_power[con],type="l", xlab = "", ylab = "Global Active Power (killowatts)")
plot(d1, Voltage[con], type="l", ylab = "Voltage", xlab = "datetime")
plot(d1, Sub_metering_1[con], type="l", col="black", ylab = "Energy sub metering", xlab = "")
lines(d1, Sub_metering_2[con], col="red")
lines(d1, Sub_metering_3[con], col="blue")
legend("topright", lty=1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(d1, Global_reactive_power[con], type="l", ylab = "Global_reactive_power", xlab = "datetime")

dev.copy(png, file = "plot4.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device

