library(ggplot2)
png(filename = "plot6.png", width = 480, height = 480)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
Bal <- NEI[which(NEI$fips == 24510),]
Los <- NEI[which(NEI$fips == 06037),]
#qplot(year,Emissions,data = NEI[which(NEI$fips == 24510),],col = "green")
#qplot(year,Emissions,data = NEI[which(NEI$fips == 06037),],col = "yellow")

with(NEI, plot(year, Emissions, main = "Compare Baltimore and Los Angeles County", type = "p"))
with(subset(NEI, fips == 24510), points(year, Emissions, col = "blue"))
with(subset(NEI, fips == 06037), points(year, Emissions, col = "red"))
legend("topright", pch = 1, col = c("blue", "red"), legend = c("Baltimore City", "Los Angeles County"))