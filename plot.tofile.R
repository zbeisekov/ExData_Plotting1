source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

plot.tofile <- function(epc) {
    png("plot1.PNG")
    plot.plot1(epc)
    dev.off()
    
    png("plot2.PNG")
    plot.plot2(epc)
    dev.off()
    
    png("plot3.PNG")
    plot.plot3(epc)
    dev.off()
    
    png("plot4.PNG")
    plot.plot4(epc)
    dev.off()
}