#Read data 
dat<-read.csv("../../data/Advertising.csv",row.names=1)

#Linear regression between Sales and TV
reg_tv<-lm(Sales~TV, data=dat)
regsum_tv<-summary(reg_tv)
names(reg_tv)
save(reg_tv, file="../regression.RData")


#Linear regression between Sales and Radio
reg_radio<-lm(Sales~Radio,data=dat)
regsum_radio<-summary(reg_radio)
names(reg_radio)
save(reg_radio,file="../regression.RData")

#Linear regression between Sales and Newspaper

