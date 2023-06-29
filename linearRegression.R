library(caret)
data("iris")
x = iris$Sepal.Length
y = iris$Sepal.Width
model = lm(y~x)
a = as.integer(readline(prompt = "Enter length: "))
a = data.frame(x = a)
result = predict(model, a)
cat("The predicted weight: ", result)
plot(x,y, col = "blue", main = "lm", abline(model), xlab = "length", ylab = "width")