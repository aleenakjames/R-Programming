library(rpart)
library(rpart.plot)
library(caret)
data("iris")
set.seed(123)
trainIndex = sample(1:nrow(iris), round(nrow(iris)*0.7), replace = F)
trainData = iris[trainIndex,]
testData = iris[-trainIndex,]
model = rpart(Species~., dat = trainData, method = "class")
rpart.plot(model)
predictions = predict(model, testData,type = "class")
cm = confusionMatrix(predictions, testData$Species)
print(cm$table)