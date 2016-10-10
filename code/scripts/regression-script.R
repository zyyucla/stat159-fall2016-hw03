#Read data 
dat<-read.csv("../../data/Advertising.csv",row.names=1)

#Linear regression between Sales and TV
reg_tv<-lm(Sales~TV, data=dat)
regsum_tv<-summary(reg_tv)
names(regsum_tv)
save(regsum_tv, file="../regression.RData")


#Linear regression between Sales and Radio
reg_radio<-lm(Sales~Radio,data=dat)
regsum_radio<-summary(reg_radio)
names(regsum_radio)
save(regsum_radio,file="../regression.RData")

#Linear regression between Sales and Newspaper

