filename <- "./household_power_consumption_trimmed.txt"

data <- read.table(filename, header=TRUE, sep=';')
data[,3] <- as.numeric(data[,3])
datetime <- strptime(paste(data[,1], data[,2]), format='%d/%m/%Y %H:%M:%S')

png(filename="plot2.png", width=480, height=480)
plot(datetime, data[,3], type='l', xlab='', ylab="Global Active Power (kilowatts)")
dev.off()