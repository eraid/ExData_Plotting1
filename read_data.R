### Read data: method 1.
txtfile <- file("data/household_power_consumption.txt")
data <- read.csv(text = grep("^[1,2]/2/2007", readLines(txtfile), value = TRUE), 
                 col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                 header = TRUE, 
                 sep = ';',
                 na.strings = "?", 
                 stringsAsFactors = FALSE
                 )
## Converting dates
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)