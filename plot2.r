## Plot 2
png("plot2.png", width=480, height=480, units='px')
data = read.table("household_power_consumption.txt", sep=";", header=TRUE)
Date <- as.Date(strptime(data$Date, format="%d/%m/%Y"))
data$Date <- Date
d <- subset(data,Date == "2007-02-01")
d1 <- subset(data,Date == "2007-02-02")
finaldata <- rbind(d,d1)
plot(finaldata$Global_active_power, type='l', xaxt='n', ylab="Global Active Power (Kilowatts)")
axis(1,at = c(0,1500,2900),labels=c( 'Thu', 'Fri', 'Sat'))
dev.off()
