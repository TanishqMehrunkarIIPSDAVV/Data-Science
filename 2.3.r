library(fastDummies)
x <- read.csv("./Data-Science/salaries.csv", header = TRUE, sep = ",")
y <- dummy_cols(x)
str(y$experience_level_EN)