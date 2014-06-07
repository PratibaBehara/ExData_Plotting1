  getwd()

  setwd("C:/Users/Pratibha/Documents/Coursera/Data science/04.Exploratory Data Analysis")

  unzip("exdata-data-household_power_consumption.zip")



  household_data <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
  
  household_power_data <- household_data[which((household_data$Date %in% c("1/2/2007","2/2/2007"))==TRUE),]



   household_power_data$dateTime <- paste(household_power_data$Date,household_power_data$Time)

  household_power_data$dateTime <- strptime(household_power_data$dateTime , "%d/%m/%Y %H:%M:%S")


  ### plot
  plot(household_power_data$dateTime,household_power_data$Global_active_power,type="l",
     xlab = "",ylab="Global Active Power(kilowatts)")
  
  ########copying
  
  dev.copy(png, file= "plot2.png")
  dev.off()


