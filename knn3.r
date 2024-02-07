library('class')
library('caret')
d<-read.csv('diabetes (1).csv')
View(d)

class(d$Insulin)
str(d)
d[,'class']=factor(d[,'class'])

mean(d$Age)
summary(d)

train=d[1:500,]
test=d[501:768,]

p=knn(train[,-9],test[,-9],train$class,k=2)
p

confusion=table(p,test$class)
confusion

sum(diag(confusion))/nrow(test)
confusionMatrix(p,test$class)
