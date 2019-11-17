plot.plot2 <- function(epc) {
    png("plot2.png")
    with(epc, plot(Timestamp, Global_active_power, type = "n",
                   xlab = "", ylab = "Global active power (kilowatts)"))
    with(epc, lines(Timestamp, Global_active_power))
    dev.off()
}
