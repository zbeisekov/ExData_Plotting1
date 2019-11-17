source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

plot.tofile <- function(epc) {
    png("plots/plot1.png")
    plot.plot1(epc)
    dev.off()
    
    png("plots/plot2.png")
    plot.plot2(epc)
    dev.off()
    
    png("plots/plot3.png")
    plot.plot3(epc)
    dev.off()
    
    png("plots/plot4.png")
    plot.plot4(epc)
    dev.off()
}