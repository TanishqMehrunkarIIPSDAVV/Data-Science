library(caret)
x <- read.csv("./Data-Science/salaries.csv")
control <- trainControl(method = "cv", number = 5, classProbs = TRUE,
                        summaryFunction = mnLogLoss)
fit <- train(company_size ~ ., data = x, method = "rpart", metric = "logLoss",
             trControl = control)
print(fit)