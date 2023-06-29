library(caret)
library(e1071)
data("iris")
set.seed(121)
split = createDataPartition(iris$Species, p = 0.7, list = F, times =1)
train = iris[split,]
test = iris[-split,]
classifier = svm(formula = Species~., data = train, type = "C-classification", kernel = "linear")
predictions = predict(classifier, test[-5], type = 'class')
cm = (confusionMatrix(test$Species, predictions))$table
print(cm)
cat("Accuracy: ", (sum(diag(cm))/sum(cm)))