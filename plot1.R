filename <- "./household_power_consumption_trimmed.txt"

data <- read.table(filename, header=TRUE, sep=';')
global_active_power <- as.numeric(data[,3])

png(filename="plot1.png", width=480, height=480)
hist(global_active_power, xlab='GloablActive Power (kilowatts)', ylab='Frequency', main="Global Active Power", col='red')
dev.off()
