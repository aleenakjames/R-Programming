library(dbscan)
data("mtcars")
subset = mtcars[ , c(1,3)]
model = dbscan(subset, eps = 2, minPts = 3)
print(model$cluster)