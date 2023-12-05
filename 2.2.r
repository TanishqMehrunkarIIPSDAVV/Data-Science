library(Hmisc)
f <- read.csv("./Data-Science/life.csv", sep = ",", header = TRUE)
for (i in f) {
  for (j in i) {
    if (is.na(j)) {
      if (is.numeric(j)) {
        x <- impute(f, fun = mean)
      } else {
        x <- impute(f, fun = mode)
      }
    }
    write.csv(x, file = "./Data-Science/life.csv", append = TRUE, sep = ",")
  }
}