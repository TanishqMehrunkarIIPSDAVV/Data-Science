x <- read.csv("./Data-Science/life.csv", header = TRUE, sep = ",")
for (i in x) {
  if (is.numeric(i)) {
    barplot(i, xlab = "X Axis", ylab = "Y Axis", main = "Bar Graph")
  }
}