data<-read.table("./household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,dec=".")
UsedData<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(UsedData$Global_active_power)
datetime <- strptime(paste(UsedData$Date, UsedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(UsedData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()