f <- read.csv("./Data-Science/salaries.csv", header = TRUE, sep = ",")
x <- nrow(f)
index <- 1 : x
g <- cbind(f, index)
write.csv(f, file = "./Data-Science/salaries.csv", sep = ",", append = FALSE)