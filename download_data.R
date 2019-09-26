library(dplyr)

setwd("/media/usama/F/NTL/Data Science/4.ExData_plotting/ExData_Plotting1-master")

zipUrl <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
zipFile <- "household_power_consumption.zip"

if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile, mode = "wb")
}
          
# unzip zip file containing data if data directory doesn't already exist
dataPath <- paste(getwd(), "household_power_consumption.txt", sep = "/")

if (!file.exists(dataPath)) {
  unzip(zipFile)
}

# row_no <- 2075259
# col_no <- 9
# 
# top.size <- object.size(read.table(dataPath, nrows = row_no))
# 
# lines <- as.numeric(gsub("[^0-9]", "", system("wc -l household_power_consumption.txt", intern=T)))
# 
# size.estimate <- lines / 1000 * top.size
# 
# print(size.estimate)

data <- read.table(dataPath, sep = ";", skip = 1,col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power",
                                                      "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#head(data["Date"])
  