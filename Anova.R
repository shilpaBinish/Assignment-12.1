getwd()
setwd("D:\\R\\AirQualityUCI")
yeast =read.csv("yeast.csv",na.strings = c(""," ","NA"),sep = "")
yeast
str(Bank)
library(Amelia)
missmap(yeast)
table(yeast$ MIT)
fit <-lm(MIT~NUC,data=yeast)
anova(fit,test='chisq')
print(fit)

summary(fit)

plot(fit)

