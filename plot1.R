source("load_data.R")

plot1 <- function(){
    ## histogram
    hist(sub_power$Global_active_power, 
         main = "Global Active Power", 
         col = "red", 
         xlab = "Global Active Power (kilowatts)")
    
    ## create PNG device
    dev.copy(png, file = "plot1.png", width = 480, height = 480)
    dev.off()
}

plot1()