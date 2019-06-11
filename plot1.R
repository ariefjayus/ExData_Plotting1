# Load the data
my_data <- read.delim("C:/Users/aaddinnitya/Documents/ariefjayus/Work/Coursera/Exploratory Data Analysis/household_power_consumption.txt",header = TRUE, sep = ";", dec = ".", stringsAsFactors = FALSE, na.strings = "?")
# subset observation data from data
sub_data <- subset(my_data, Date == "1/2/2007" | Date == "2/2/2007")

# Draw the histogram chart of Global Active Power

hist(as.numeric(sub_data$Global_active_power), main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

# save file
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()