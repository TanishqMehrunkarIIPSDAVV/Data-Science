library(caret)
library(C50)
x <- read.csv("./Data-Science/admit.csv", header = TRUE)
x$admit <- as.factor(x$admit)
y <- sample(2, nrow(x), replace = TRUE)
train <- x[y == 1, ]
test <- x[y == 2, ]
tree <- C5.0(x = train, y = train$admit)
plot(tree)