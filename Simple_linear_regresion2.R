cereal <-read.csv(file=file.choose())
head(cereal)

attach(cereal)
plot(Protein,Fiber,pch=20,xlim=c(0,30),ylim=c(0,5))
Fiberbar <- mean(Fiber)
abline(h=Fibarbar,col="blue")
n <- length(Fiber)
for (i in 1:n) {lines(c(Protein[i],Protein[i]),c(Fibarbar,Fiber[i]),col="red")}


linearmodel <- lm(Fiber~Protein)
summary(linearmodel)
res <- resid(linearmodel)
summary(res)
## 
plot(Protein,Fiber,pch=20,xlim=c(0,30),ylim=c(0,5))
abline(linearmodel,col="blue")
for (i in 1:n) {arrows(Protein[i], fitted(linearmodel)[i], Protein[i], Calories[i],angle = 30,length = 0.07,col="green")}
qqnorm(res,pch=20)
qqline(res,col="red")
hist(res,col="green")
predPrice <- fitted(linearmodel)

plot(res~predPrice,main="Residuals versus Fitted Values",xlab="Fitted Values",ylab="Residuals",pch=20,col="red")
abline(h=0,col="blue")
H = 0.6208*Protein + 0.3133
print(H)
G = H - Fiber
print(G)
