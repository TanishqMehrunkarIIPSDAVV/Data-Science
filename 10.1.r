library(car)
x <- read.csv("./Data-Science/admit.csv")
model <- lm(admit ~ ., data = x)
print(vif(model))