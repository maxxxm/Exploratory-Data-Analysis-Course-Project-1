data<- read.csv("household_power_consumption.txt",header = TRUE,sep = ";", stringsAsFactors=FALSE, dec=".")

data1<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste(data1$Date,data1$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
globalactivepower<-as.numeric(data1$Global_active_power)
png("plot2.png",width = 480,height = 480)
plot(datetime,globalactivepower,type = "l")
dev.off()
