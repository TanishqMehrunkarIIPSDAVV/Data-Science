library(caret)
x <- read.csv("./Data-Science/salaries.csv")
t <- createDataPartition(x$salary, times = 1, p = .8, list = FALSE)
x_train <- x[t, ]
x_test <- x[-t, ]
print(nrow(x_train))
print(nrow(x_test))