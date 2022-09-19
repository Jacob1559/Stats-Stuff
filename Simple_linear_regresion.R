cereal <-read.csv(file=file.choose())
head(cereal)

attach(cereal)
plot(Sugar,Calories,pch=20,xlim=c(0,50),ylim=c(0,300))
Caloriebar <- mean(Calories)
abline(h=Caloriebar,col="blue")
n <- length(Calories)
for (i in 1:n) {lines(c(Sugar[i],Sugar[i]),c(Caloriebar,Calories[i]),col="red")}


linearmodel <- lm(Calories~Sugar)
summary(linearmodel)
res <- resid(linearmodel)
summary(res)
## 
plot(Sugar,Calories,pch=20,xlim=c(0,50),ylim=c(0,300))
abline(linearmodel,col="blue")
for (i in 1:n) {arrows(Sugar[i], fitted(linearmodel)[i], Sugar[i], Calories[i],angle = 30,length = 0.07,col="green")}
qqnorm(res,pch=20)
qqline(res,col="red")

