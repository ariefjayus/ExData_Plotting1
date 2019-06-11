# Load the data
my_data <- read.delim("C:/Users/aaddinnitya/Documents/ariefjayus/Work/Coursera/Exploratory Data Analysis/household_power_consumption.txt",header = TRUE, sep = ";", dec = ".", stringsAsFactors = FALSE, na.strings = "?")

# subset observation data from data
sub_data <- subset(my_data, Date == "1/2/2007" | Date == "2/2/2007")

# convert format "Dates" and "Times" column to date format
date_time <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

par(mfrow = c(2, 2))

# Draw the plot of Global Active Power vs Date Time
plot(date_time, sub_data$Global_active_power,  type="l", xlab="", ylab="Global Active Power")

# Draw the plot of Voltage vs Date Time
plot(date_time, sub_data$Voltage,  type="l", xlab="", ylab="Voltage")

# Draw the plot of Energy sub matering vs Date Time
plot(date_time, sub_data$Sub_metering_1,  type="l", xlab="", ylab="Energy sub metering")
lines(date_time, sub_data$Sub_metering_2, type="l", col="red")
lines(date_time, sub_data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty = "n", col=c("black", "red", "blue"))

# Draw the plot of Global Reactive Power vs Date Time
plot(date_time, sub_data$Global_reactive_power,  type="l", xlab="", ylab="Global_reactive_power")


# save file

dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()