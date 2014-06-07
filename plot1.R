  getwd()

  setwd("C:/Users/Pratibha/Documents/Coursera/Data science/04.Exploratory Data Analysis")

  unzip("exdata-data-household_power_consumption.zip")

  household_data <- read.table("household_power_consumption.txt",header=TRUE,sep=";"
                               ,na.strings="?")

  household_power_data <- household_data[which((household_data$Date %in% 
                                                  c("1/2/2007","2/2/2007"))==TRUE),]

  ####histogram
  hist(household_power_data$Global_active_power,xlab ="Global Active Power(kilowatts)"
       ,main= "Global Active Power",col="Red")

########copying
  
  dev.copy(png, file= "plot1.png")
  dev.off()






