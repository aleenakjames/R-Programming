library(ggfortify)
data("iris")
k = 3
model = kmeans(iris[-5], centers = k)
print(autoplot(model, iris[-5],frame = T))