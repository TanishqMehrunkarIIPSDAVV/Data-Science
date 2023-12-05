library(caret)
library(neuralnet)
x <- read.csv("./Data-Science/admit.csv")
y <- x$admit
x$admit <- (y - min(y)) / (max(y) - min(y))
inp <- sample(2, nrow(x), replace = TRUE, prob = c(0.7, 0.3))
train <- x[inp == 1, ]
test <- x[inp == 2, ]
n <- neuralnet(
  admit ~ .,
  data = train,
  hidden = 5,
  linear.output = FALSE,
  err.fct = "ce",
  lifesign = "full",
  rep = 2,
  algorithm = "rprop+",
  stepmax = 100000
)
output <- compute(n, rep = 1, train[, -1])
p1 <- output$net.result
pred1 <- ifelse(p1 > 0.5, 1, 0)
tab1 <- table(pred1, train$admit)
print(confusionMatrix(tab1))