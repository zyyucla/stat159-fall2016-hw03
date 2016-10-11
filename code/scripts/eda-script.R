#Read data and inspect data frame
dat<-read.csv("../../data/Advertising.csv",row.names=1)
head(dat)
str(dat)
summary(dat)
cor(dat)

#Output result to the file
sink("../../data/eda-output.txt")
cat("Summary Statistics"+"\n")
summary(dat)
cat("\n")
cat("Correlation Matrix"+"\n")
cor(dat)
sink()

#save correlation matrix into binary file
#save(cor(dat),file="../../data/correlation-matrix.RData")

#create histogram of all the variables
png("../../images/histogram-tv.png")
hist(dat$TV,main="Histogram of TV", xlab="TV")

png("../../images/histogram-radio.png")
hist(dat$Radio,main="Histogram of Radio", xlab="Radio")

png("../../images/histogram-newspaper.png")
hist(dat$Newspaper,main="Histogram of Newspaper", xlab="Newspaper")

png("../../images/histogram-sales.png")
hist(dat$Sales,main="Histogram of Sales", xlab="Sales")

#create matrix scatterplot
png("../../images/scatterplot-matrix.png")
pairs(~Sales+TV+Newspaper+Radio, data=dat, main="Scatterplot Matrix of all variables")
dev.off()


