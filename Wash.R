speed <-rep(c("Fast", "Slow"), each= 9)

temp <-rep(c("Low","Medium", "High","Low","Medium", "High"),each=3)

time <-c(10,	9,	8, 9,	11,	6, 12,	8,	5, 19,	18,	14, 17,19,	17, 16, 20,  16)

time_data=data.frame (speed,temp,time)

modelact1<-aov(time~speed+ temp +speed:temp,data=time_data)

summary (modelact1)
