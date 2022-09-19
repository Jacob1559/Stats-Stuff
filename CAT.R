


install.packages("interactions")


library(MASS)

my_data <- cats

attach(cats)
fitcats <- lm(Hwt~Bwt*Sex, data = as.data.frame(cats))

Aov_cats1 <- aov(Hwt~Bwt, data = as.data.frame(cats))

Aov_cats2 <- aov(Hwt~Sex, data = as.data.frame(cats))


summary(Aov_cats1)

summary(Aov_cats2)

AIC(Aov_cats1)

AIC(Aov_cats2)

intcat = interact_plot(fitcats, pred = "Bwt", modx = "Sex")

newdata = data.frame(Sex = "M",Bwt= 3.8)

predict(fitcats,newdata , interval = 'prediction',leval = 0.99)                                            

summary(intcat)


