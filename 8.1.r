library(ClusterR)
library(cluster)
iris_1 <- iris[, -5]
kmeans_re <- kmeans(iris_1, centers = 3, nstart = 20)
cm <- table(iris$Species, kmeans_re$cluster)
print(cm)
plot(iris_1[c("Sepal.Length", "Sepal.Width")])
plot(iris_1[c("Sepal.Length", "Sepal.Width")], col = kmeans_re$cluster)
plot(iris_1[c("Sepal.Length", "Sepal.Width")], col = kmeans_re$cluster,
     main = "K-means with 3 clusters")
print(kmeans_re$centers[, c("Sepal.Length", "Sepal.Width")])
points(kmeans_re$centers[, c("Sepal.Length", "Sepal.Width")],
       col = 1:3, pch = 8, cex = 3)
y_kmeans <- kmeans_re$cluster
clusplot(iris_1[, c("Sepal.Length", "Sepal.Width")],
  y_kmeans,
  lines = 0,
  shade = TRUE,
  color = TRUE,
  labels = 2,
  plotchar = FALSE,
  span = TRUE,
  main = paste("Cluster iris"),
  xlab = "Sepal.Length",
  ylab = "Sepal.Width"
)