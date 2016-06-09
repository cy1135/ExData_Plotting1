rm(list=ls())

## read file
power <- read.csv("household_power_consumption.txt", 
                    header=TRUE, 
                    sep = ";")

## view data                    
#View(power)

## convert date & time
power$Time <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")

## subset of data between 2007-02-01 and 2007-0202
sub_power <- subset(power, Date %in% as.Date(c("2007-02-01", "2007-02-02")))

#View(sub_power)

## convert to numeric
sub_power$Global_active_power <- as.numeric(as.character(sub_power$Global_active_power))
sub_power$Global_reactive_power <- as.numeric(as.character(sub_power$Global_reactive_power))
sub_power$Voltage <- as.numeric(as.character(sub_power$Voltage))
sub_power$Sub_metering_1 <- as.numeric(as.character(sub_power$Sub_metering_1))
sub_power$Sub_metering_2 <- as.numeric(as.character(sub_power$Sub_metering_2))
sub_power$Sub_metering_3 <- as.numeric(as.character(sub_power$Sub_metering_3))

#View(sub_power)
