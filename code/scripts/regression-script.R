#Read data 
dat<-read.csv("../data/Advertising.csv",row.names=1)

#Linear regression between Sales and TV
reg_tv<-lm(Sales~TV, data=dat)
regsum_tv<-summary(reg_tv)
names(regsum_tv)
save(regsum_tv, file="../regression.RData")




