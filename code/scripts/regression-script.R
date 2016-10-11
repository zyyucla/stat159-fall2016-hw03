#Read data 
dat<-read.csv("../../data/Advertising.csv",row.names=1)

#get the multiple linear regression and save the data
mul_reg<-lm(Sales~TV+Radio+Newspaper, data=dat)
mulsum_reg<-summary(mul_reg)
names(mulsum)
save(mul_reg, file="../../data/regression.RData")




