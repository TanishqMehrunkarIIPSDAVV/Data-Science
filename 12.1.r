library(arules)
library(arulesViz)
x <- read.transactions("./Data-Science/groceries.csv", sep = ",",
                       rm.duplicates = TRUE)
ass_rules <- apriori(data = x, parameter = list(
  support = 0.004, confidence = 0.2
))
itemFrequencyPlot(x, topN = 10)
inspect(sort(ass_rules, by = "lift")[1:10])
plot(ass_rules, method = "graph", measure = "confidence", shading = "lift")