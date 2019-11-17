plot.plot4 <- function(epc) {
    par(mfrow=c(2,2))
    plot.plot1(epc)
    
    with(epc, plot(Timestamp, Voltage, xlab = "datetime", type = "n"))
    with(epc, lines(Timestamp, Voltage))
    
    plot.plot3(epc)
    
    with(epc, plot(Timestamp, Global_reactive_power, xlab = "datetime", type = "n"))
    with(epc, lines(Timestamp, Global_reactive_power))
    
}