library(e1071)

library(caTools)

library(caret)

tennis = read.csv(file.choose())

attach(tennis)
split <- sample.split(tennis, SplitRatio = 0.5)

train_cl <- subset(tennis,split == "TRUE")

test_cl <- subset(tennis, split == "FALSE")



set.seed(120) 

classifier_clwind <- naiveBayes(wind~PlayTennis, data = train_cl)

classifier_cltemp <- naiveBayes(Temperature~PlayTennis, data = train_cl)

classifier_clhumidity <- naiveBayes(Humidity~PlayTennis, data = train_cl)

classifier_cloutlook <- naiveBayes(Outlook~PlayTennis, data = train_cl)

classifier_clwind

classifier_cltemp

classifier_clhumidity

classifier_cloutlook





y_pred <- predict(classifier_cl, newdata = test_cl)

tennis_game <- table(test_cl$PlayTennis, y_pred)

tennis_game

confusionMatrix(tennis_game)
