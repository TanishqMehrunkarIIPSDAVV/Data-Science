library(fastDummies)
x <- read.csv("./Data-Science/life.csv", header = TRUE, sep = ",")
y <- dummy_cols(x)
print(y)