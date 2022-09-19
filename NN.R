bankrupt = read.csv(file.choose())

attach(bankrupt)

n = nrow(bankrupt)

split = floor(0.85*n)

bankmix = bankrupt[sample(46),]

banktrain = bankmix[1:split,]

banktest = bankmix[(split + 1):n,]

banktest

netmod = neuralnet(Status~CFtoTD + NItoTA + CAtoCL + CAtoNS, data =banktrain,hidden = c(10,10),err.fct ='ce',linear.output = FALSE)

plot(netmod)                   

summary(netmod)

print(netmod)

err <-  banktrain$status - netmod$net.result[[1]]

err

round(err,digits = 2)

testdata = banktest[,-1]

Statuspred = predict(netmod, newdata = testdata)

round(Statuspred, digits = 2)

banktest$Status

banktest[1]

err2 = banktest[1] - Statuspred

I = (err2**2)**0.5 < 0.5

I
