med<-rep(c('drugl','drug2','drug3' ),c(5,7,7) )

med
time<-c(7.3,8.2,10.1,6,9.5,7.1,10.6,11.2,9,8.5,10.9,7.8,5.8,6.5,8.8,4.9,7.9,8.5,5.2)

time

mydata<-data.frame(med,time)

mydata

model1<-aov(time~med, data=mydata)

summary (model1)

TukeyHSD (model1)
