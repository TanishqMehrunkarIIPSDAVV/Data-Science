x <- read.csv("./Data-Science/admit.csv")
output <- glm(admit ~ ., data = x, family = poisson)
print(summary(output))
plot(output)