library(ggplot2)
png(filename = "plot5.png", width = 480, height = 480)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
qplot(year,Emissions,data = NEI[which(NEI$fips == 24510),])

dev.off()