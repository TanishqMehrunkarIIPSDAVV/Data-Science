library(rpart)
x <- read.csv("./Data-Science/admit.csv", header = TRUE)
model <- rpart(admit ~ ., data = x)
plot(model)
text(model, digits = 3)