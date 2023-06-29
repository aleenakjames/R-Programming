library(MASS)
library(caret)
data("biopsy")
set.seed(123)
trainIndex = createDataPartition(biopsy$class, p = .7, list = FALSE, times = 1)
trainData = biopsy[trainIndex,]
testData = biopsy[-trainIndex,]
model = glm(class~V1+V2+V3, data = trainData, family = "binomial")
testData$predicted = predict(model, newdata = testData, type = "response")
predicted_labels = ifelse(testData$predicted > 0.5,print("malignant"), print("benign"))
predicted_labels = factor(predicted_labels, levels = c("benign","malignant"))
cm = (confusionMatrix(testData$class,predicted_labels)$table)
print(cm)
cat("Accuracy: ",(cm[1]+cm[4])/nrow(testData))