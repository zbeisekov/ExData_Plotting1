library(data.table)
library(lubridate)
library(dplyr)

read.epc <- function() {
    # We are using fread function from data.table library, because it is efficient for
    # reading big datasets. 
    
    # We embed grep function, so we read only those lines
    # that start with 1/2/2007 or 2/2/2007.
    
    # Unfortunately, that skips the header of the file, so we need to provide
    # it manually through argument col.names.
    # We need also set na.string, because '?' is difference from the default ',,'
    
    epc <- fread(input = "grep '^[1-2]/2/2007' household_power_consumption.txt",
          col.names = c("Date", "Time", "Global_active_power", 
                        "Global_reactive_power", "Voltage",
                        "Global_intensity", "Sub_metering_1",
                        "Sub_metering_2", "Sub_metering_3"),
          na.strings = "?")
    
    # We need to have a separate column for the timestamp.
    # We could dump the Date and Time, but keep it if we need in the future.
    
    epc <- epc %>% mutate(Timestamp = dmy_hms(paste(Date, Time, sep = " ")))
    
    return(epc)
}