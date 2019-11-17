source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

plot.tofile <- function(epc) {
    png("plots/plot1.PNG")
    plot.plot1(epc)
    dev.off()
    
    png("plots/plot2.PNG")
    plot.plot2(epc)
    dev.off()
    
    png("plots/plot3.PNG")
    plot.plot3(epc)
    dev.off()
    
    png("plots/plot4.PNG")
    plot.plot4(epc)
    dev.off()
}