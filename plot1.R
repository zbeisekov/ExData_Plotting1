
plot.plot1 <- function(epc) {
    with(epc, hist(Global_active_power, xlab = "Global Active Power (kilowatts)",
                   ylab = "Frequency",
                   main = "Global Active Power",
                   col = "red"))
    
}