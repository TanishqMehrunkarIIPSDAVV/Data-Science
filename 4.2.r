library(caret)
library(ROSE)
x <- read.csv("./Data-Science/admit.csv", header = TRUE)
x$admit <- as.factor(x$admit)
y <- sample(2, nrow(x), replace = TRUE, prob = c(0.7, 0.3))
train <- x[y == 1, ]
test <- x[y == 2, ]
over <- ovun.sample(admit ~ ., data = train, method = "under")$data
print(table(over$admit))
over <- ovun.sample(admit ~ ., data = train, method = "over")$data
print(table(over$admit))