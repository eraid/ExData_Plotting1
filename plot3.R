#Read dataset method 1
source("read_data.R")
# or read dataset method 2
#source("read_data_2.R")

#Construct the plot and save it to a PNG file 
#with a width of 480 pixels and a height of 480 pixels.

with(data, {
  plot(Sub_metering_1 ~ Datetime, 
       type = "l", 
       ylab = "Energy sub metering", 
       xlab = "")
  lines(Sub_metering_2 ~ Datetime, 
        col = 'Red')
  lines(Sub_metering_3 ~ Datetime, 
        col = 'Blue')
})
legend("topright", 
       col = c("black", "red", "blue"), 
       lty = 1, 
       lwd = 2, 
       cex = 0.75,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.print(width = 480, height = 480, horizontal = FALSE)
dev.copy(png,file="plot3.png")
dev.off()