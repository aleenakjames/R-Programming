x = matrix(c(2,3,2,6,3,5,6,7,4,4,2,9,4,6,2),ncol = 3, byrow = T)
result = hclust(dist(x))
plot(result)