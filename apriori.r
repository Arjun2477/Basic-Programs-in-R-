library(arules)
library(arulesViz)
library(RColorBrewer)
data("Groceries")
rules<-apriori(Groceries,parameter = list(sup=0.01,conf=0.2))
inspect(rules[1:10])

arules::itemFrequencyPlot(Groceries,topN=20,
                          col=brewer.pal(8,'Pastel2'),
                          main="relative Item Frequency Plot",
                          type='relative',
                          ylab="item frequency (relative)")

