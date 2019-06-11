# Load the data
my_data <- read.delim("C:/Users/aaddinnitya/Documents/ariefjayus/Work/Coursera/Exploratory Data Analysis/household_power_consumption.txt",header = TRUE, sep = ";", dec = ".", stringsAsFactors = FALSE, na.strings = "?")

# subset observation data from data
sub_data <- subset(my_data, Date == "1/2/2007" | Date == "2/2/2007")

# convert format "Dates" and "Times" column to date format
date_time <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Draw the plot of Global Active Power vs Date Time
plot(date_time, sub_data$Global_active_power,  type="l", xlab="", ylab="Global Active Power (kilowatts)")

# save file
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()