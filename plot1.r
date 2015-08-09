## Plot 1
png("plot1.png", width=480, height=480, units='px')
data = read.table("household_power_consumption.txt", sep=";", header=TRUE)
Date <- as.Date(strptime(data$Date, format="%d/%m/%Y"))
data$Date <- Date
d <- subset(data,Date == "2007-02-01")
d1 <- subset(data,Date == "2007-02-02")
finaldata <- rbind(d,d1)
rm(data, d, d1,Date)
finaldata$Global_active_power <- as.numeric(finaldata$Global_active_power)
hist(finaldata$Global_active_power, col='red', main="Global Active Power", xlab= "Global Active Power (kilowatts)")
dev.off()
