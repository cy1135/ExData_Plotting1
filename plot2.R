source("load_data.R")

plot2 <- function(){
    ## histogram
    plot(sub_power$Time,
         sub_power$Global_active_power,
         type = "l",
         xlab = "",
         ylab = "Global Active Power (kilowatts)")
    
    ## create PNG device
    dev.copy(png, file = "plot2.png", width = 480, height = 480)
    dev.off()
}

plot2()