#Read dataset method 1
source("read_data.R")
# or read dataset method 2
#source("read_data_2.R")

#Construct the plot and save it to a PNG file 
#with a width of 480 pixels and a height of 480 pixels.

plot(data$Global_active_power ~ data$Datetime, 
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l"
     )
dev.print(width = 480, height = 480, horizontal = FALSE)
dev.copy(png,file="plot2.png")
dev.off()