### Read data: method 2.
data <- read.csv("data/household_power_consumption.txt", 
                  header = TRUE, 
                  sep = ';',
                  na.strings = "?", 
                  nrows = 2075259, 
                  check.names = FALSE, 
                  stringsAsFactors = FALSE, 
                  comment.char = "", 
                  quote = '\"')
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
## Subsetting the data
data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
## Converting date time
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)