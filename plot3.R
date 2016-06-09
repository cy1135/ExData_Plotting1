source("load_data.R")

plot3 <- function(){
    ## histogram
    plot(sub_power$Time,
         sub_power$Sub_metering_1,
         type = "l",
         xlab = "",
         ylab = "Energy sub metering")
    ## draw line for Sub_metering_2
    lines(sub_power$Time, 
          sub_power$Sub_metering_2, 
          col = "red")
    ## draw line for Sub_metering_3
    lines(sub_power$Time, 
          sub_power$Sub_metering_3, 
          col = "blue")
    ## build legend
    legend("topright", 
           col = c("black", "red", "blue"), 
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty = c(1, 1), 
           lwd = c(1, 1))
    
    ## create PNG device
    dev.copy(png, file = "plot3.png", width = 480, height = 480)
    dev.off()
}

plot3()