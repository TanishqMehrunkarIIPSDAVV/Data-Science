x <- read.csv("./Data-Science/test.csv")
for (i in x) {
  if (is.numeric(i)) {
    hist(i, main = "Histogram", xlab = "X Axis", ylab = "Y Axis")
  }
}