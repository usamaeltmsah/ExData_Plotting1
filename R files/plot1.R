setwd("/media/usama/F/NTL/Data Science/4.ExData_plotting/ExData_Plotting1-master") # As the download_data.R in the another directory I should access it by location

source("download_data.R")

# head(data["Global_active_power"])

dates <- data[1]

times <- data[2]

Global_active_power <- data[3]

#print(NCOL(dates))   
Global_active_power <- as.vector(t(Global_active_power))
Global_active_power <- suppressWarnings(as.numeric(Global_active_power))
rem_na <- !is.na(Global_active_power)
head(rem_na)
dates <- as.vector(t(dates))
times <- as.vector(t(times))
x <- paste(dates, times)

date_time <- strptime(x, "%d/%m/%Y %H:%M:%S")

con <- date_time > strptime("01/02/2007 00:00:00", "%d/%m/%Y %H:%M:%S") & date_time < strptime("03/02/2007 00:00:00", "%d/%m/%Y %H:%M:%S")
d1 <- date_time[con]

hist(Global_active_power[con], col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts)")

dev.copy(png, file = "plot1.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device