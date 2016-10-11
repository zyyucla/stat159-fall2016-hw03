#Read data 
dat<-read.csv("../../data/Advertising.csv",row.names=1)

#get the multiple linear regression and save the data
mul_reg<-lm(Sales~TV+Radio+Newspaper, data=dat)
mulsum_reg<-summary(mul_reg)
names(mulsum_reg)
save(mul_reg, file="../../data/regression.RData")
png("../../images/test.png")
par(mfrow=c(2,2))
plot(mul_reg)

#TV-Sales scatterplot
reg_tv<-lm(Sales~TV,data=dat)
png("../../images/scatterplot-tv-sales.png")
plot(dat$TV,dat$Sales,main="Linear regression of TV ads on Sales",xlab="TV", ylab="Sales",pch = 19,col="#8e8f94")
abline(reg_tv,col="#bd0300",lwd=2)

#Radio-Sales scatterplot
reg_radio<-lm(Sales~Radio,data=dat)
png("../../images/scatterplot-radio-sales.png")
plot(dat$Radio,dat$Sales,main="Linear regression of Radio on Sales",xlab="Radio", ylab="Sales",pch = 19,col="#8e8f94")
abline(reg_radio,col="#bd0300",lwd=2)

#Newspaper-Sales scatterplot
reg_newspaper<-lm(Sales~Newspaper,data=dat)
png("../../images/scatterplot-newspaper-sales.png")
plot(dat$Newspaper,dat$Sales,main="Linear regression of Newspaper on Sales",xlab="Newspaper", ylab="Sales",pch = 19,col="#8e8f94")
abline(reg_newspaper,col="#bd0300",lwd=2)


#
