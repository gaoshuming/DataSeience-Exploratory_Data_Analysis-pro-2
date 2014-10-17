library(ggplot2)
png(filename = "plot4.png", width = 480, height = 480)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

index <- grep("[cC]oal",SCC$Short.Name)
SCC_match <- SCC$SCC[index]
dat4 <- subset(NEI,SCC %in% SCC_match,select = c(Emissions,year))
qplot(dat4$year,dat4$Emissions,dat4)

dev.off()