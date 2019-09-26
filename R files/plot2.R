source("/media/usama/F/NTL/Data Science/4.ExData_plotting/ExData_Plotting1-master/R files/plot1.R")

days <- weekdays(as.Date(dates))

#hist(Global_active_power[rem_na], col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts)")
    #with(data = plot(Global_active_power[rem_na], days[rem_na]))
        plot(d1, Global_active_power[con],type="l", xlab = "", ylab = "Global Active Power (killowatts)")
        #lines(d1[rem_na], Global_active_power[rem_na])
        dev.copy(png, file = "plot2.png") ## Copy my plot to a PNG file
        dev.off() ## Don't forget to close the PNG device