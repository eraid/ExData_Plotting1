#Read dataset method 1
source("read_data.R")
# or read dataset method 2
#source("read_data_2.R")

#Construct the plot and save it to a PNG file 
#with a width of 480 pixels and a height of 480 pixels.

hist(data$Global_active_power, 
     xlab = "Global Active Power (kilowatts)"),
     col = "red", 
     main = paste("Global Active Power"
    ) 

dev.print(width = 480, height = 480, horizontal = FALSE)
dev.copy(png,file="plot1.png")
dev.off()