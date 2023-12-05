library(olsrr)
x <- read.csv("./Data-Science/admit.csv")
model <- lm(admit ~ ., data = x)
k <- ols_step_all_possible(model)
print(k)
y <- ols_step_forward_p(model)
print(y)
z <- ols_step_backward_p(model)
print(z)