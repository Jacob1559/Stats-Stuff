my_data <- mtcars

library(MASS)

install.packages("car")

install.packages("tidyverse")

install.packages("caret")

install.packages("leaps")

library(tidyverse)

library(caret)

library(leaps)

head(my_data)

fitdata <- lm(mpg~., data = my_data)

stepAIC(fitdata, direction = 'forward')


stepAIC(fitdata, direction = 'backward')


stepAIC(fitdata, direction = 'both')

cat = 


models <- regsubsets(mpg~., data = my_data, nvmax = 10)

summary(models)

res.sum <- summary(models)
data.frame(
  Adj.R2 = res.sum$adjr2,
  CP = res.sum$cp)

fitdata2 = lm(mpg~ cyl + wt, data = my_data)

fitdata3 = lm(mpg~ wt + qsec + am, data = my_data)

fitdata4 = lm(mpg~ hp + wt + qsec + am, data = my_data)

fitdata5 = lm(mpg~ disp + hp + wt + qsec + am, data = my_data)

fitdata6 = lm(mpg~ disp + drat + hp + wt + qsec + am, data = my_data)

summary(fitdata5)

summary(fitdata4)

summary(fitdata6)

car::vif(fitdata)

ols_mallows_cp(fitdata3, fitdata)

ols_mallows_cp(fitdata4, fitdata)

ols_mallows_cp(fitdata2, fitdata)

pairs(mtcars[,1:6], pch = 19)

res <- cor(my_data)

res
