library(gridExtra)
x <- read.csv("./Data-Science/test.csv", sep = ",")
for (y in x) {
  if (is.numeric(y)) {
    hist(y, main = "Histogram")
  }
}