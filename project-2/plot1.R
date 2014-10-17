library(ggplot2)
png(filename = "plot1.png", width = 480, height = 480)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

qplot(x = year, y = Emissions,data = NEI)

dev.off()