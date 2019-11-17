plot.plot3 <- function(epc) {
    with(epc, plot(Timestamp, Sub_metering_1, type = "n",
                   xlab = "", ylab = "Energy sub metering"))
    with(epc, lines(Timestamp, Sub_metering_1, col = "black"))
    with(epc, lines(Timestamp, Sub_metering_2, col = "red"))
    with(epc, lines(Timestamp, Sub_metering_3, col = "blue"))
    legend("topright", 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           col = c("black", "red", "blue"),
           lty = 1)
}