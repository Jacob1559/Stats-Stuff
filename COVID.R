MNdeaths = read.csv(file.choose())

attach(MNdeaths)

plot(TotalDeaths~Day,xlim =c(0, 100), ylim = c(0, 1000),pch = 20)

nlsmod = nls(TotalDeaths~C/(1+exp(-k*(Day - t))), start=list(C = 1000,t = 50, k = 0.1))


summary(nlsmod)

dayvals = seq(0, 100, 0.2)

deathvals = predict(nlsmod, newdata = list(Day = dayvals))

plot(TotalDeaths~Day,xlim =c(0, 100), ylim = c(0, 1000),pch = 20)

lines(dayvals, deathvals,col='red')

