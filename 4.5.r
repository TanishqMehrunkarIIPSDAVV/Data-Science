library(randomForest)
x <- read.csv("./Data-Science/admit.csv", header = TRUE)
model <- randomForest(formula = admit ~ ., data = x)
plot(model)