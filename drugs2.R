drug<-rep(c('cis', 'vin', 'Flu'), each=8)

gender<-rep(c('female','male','female','male','female','male'),each=4)

tumor<-c(65,70,60,60,50,55,80,65,70,65,60,70,45,60,85,65,55,65,70,55,35,40,35,55)

tumordata = data.frame (drug,gender,tumor)

modelact1<-aov(tumor~drug+gender+drug:gender,data=tumordata)

summary (modelact1)

TukeyHSD (modelact1)
