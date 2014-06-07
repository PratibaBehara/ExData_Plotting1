  getwd()

  setwd("C:/Users/Pratibha/Documents/Coursera/Data science/04.Exploratory Data Analysis")

  unzip("exdata-data-household_power_consumption.zip")


  household_data <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
  
  household_power_data <- household_data[which((household_data$Date %in% c("1/2/2007","2/2/2007"))==TRUE),]

  household_power_data$dateTime <- paste(household_power_data$Date,household_power_data$Time)

  household_power_data$dateTime <- strptime(household_power_data$dateTime , "%d/%m/%Y %H:%M:%S")

  
####plot
  
  png("plot3.png",bg="white")
 
  plot(household_power_data$dateTime,y=household_power_data$Sub_metering_1 ,type="l",
       xlab="",ylab="Energy sub metering")

  lines(household_power_data$dateTime,y=household_power_data$Sub_metering_2 ,type="l",col="red")
  
  lines(household_power_data$dateTime,y=household_power_data$Sub_metering_3 ,type="l",col="blue")

  legend("topright",lty="solid" ,col= c("black","red","blue"),
       legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  

  ### copying
  dev.off()




