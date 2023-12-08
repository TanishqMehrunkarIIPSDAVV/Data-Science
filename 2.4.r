x <- read.csv("./Data-Science/salaries.csv", sep = ",", header = TRUE)
for (i in x) {
  if (is.numeric(i)) {
    y <- as.data.frame(scale(i))
  }
  str(y)
}