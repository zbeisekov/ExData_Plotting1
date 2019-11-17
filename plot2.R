plot.plot2 <- function(epc) {
    with(epc, plot(Timestamp, Global_active_power, type = "n",
                   xlab = "", ylab = "Global active power (kilowatts)"))
    with(epc, lines(Timestamp, Global_active_power))
}
