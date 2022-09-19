Eye_Color <-rep(c("Brown", "Green", "Blue"),c(8, 5, 6))

Eye_Color

CFF<-c(26.8, 27.9, 23, 25, 26, 24.8, 25.7, 24.5 ,26.4, 24.2, 28, 26.9, 29.1, 25.7, 27.2,29.9,28.5,29.4,29.4)

CFF

mydata<-data.frame(Eye_Color,CFF)

mydata

model1<-aov(CFF~Eye_Color, data=mydata)

summary (model1)

TukeyHSD (model1)
