e16 = read.csv(file.choose())

mod1 = glm(TrumpWin~Income, data = e16, family = binomial)

mod2 = glm(TrumpWin~HS, data = e16, family = binomial)

summary(mod1)

summary(mod2)

attach(e16)

Incometh = Income/1000

mod3 = glm(TrumpWin~Incometh, data = e16, family = binomial)

summary(mod3)

zc = qnorm(0.975)

zc

beta1 = -1.967e-04*c(39665, 74551)*1.118e+01

beta2 = -0.19668*c(39.665, 74.551)*1.118e+01


oddsratio1 = exp(beta1)

oddsratio1

oddsratio2 = exp(beta2)

prob1 = oddsratio1/(oddsratio1 + 1)

prob2 = oddsratio2/(oddsratio2 + 1)

exp(-0.19668 + c(-1,0,1)*1.96*0.05582)

prob1

prob2
G = 301.57 - 301.96

G

Pvalue = 1 - pchisq(G, 1)

Pvalue

x = seq(0, 8, 0.01)

y = dchisq(x, 2)

plot(y~x,pch = 20, col = "blue")

abline(h =0, col= 'red')

f = 1/sqrt(2*pi*x*exp(x))

plot(f~x,type='l', col = 'green')

p = seq(0,1,0.001)

varience = p*(1 - p)

plot(varience~p, type = 'l', col = 'purple')