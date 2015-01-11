filename <- "./household_power_consumption_trimmed.txt"

data <- read.table(filename, header=TRUE, sep=';')

data[,3] <- as.numeric(data[,3])
data[,7] <- as.numeric(data[,7])
data[,8] <- as.numeric(data[,8])
data[,9] <- as.numeric(data[,9])
data[,5] <- as.numeric(data[,5])
data[,4] <- as.numeric(data[,4])
datetime <- strptime(paste(data[,1], data[,2]), format='%d/%m/%Y %H:%M:%S')

png(filename="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(datetime, data[,3], type='l', xlab='', ylab="Global Active Power (kilowatts)")

plot(datetime, data[,5], type='l', xlab='datetime', ylab="Voltage")

plot(datetime, data[,7], col='black', type='l', xlab="", ylab="Energy sub metering")
lines(datetime, data[,8], col='red', type='l')
lines(datetime, data[,9], col='blue', type='l)
leg.txt <- c(names(data)[7], names(data)[8], names(data)[9])
legend('topright', leg.txt, col=c('black', 'red', 'blue'), lty=c(1,1))

plot(dates, data[,4], type='l', xlab='datetime', ylab="Global_reactive_power")

dev.off()