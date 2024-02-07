library('class')
library('caret')
aa=read.csv('diabetes (1).csv')
View(aa)

class(aa$Insulin)
str(aa)
aa[,'class']=factor(aa[,'class'])
str(aa)

mean(aa$Age)
summary(aa)

train=aa[1:500,]
test=aa[501:768,]

a=knn(train[,-9],test[,-9],train$class,k=2)
a

confusion=table(a,test$class)
confusion

sum(diag(confusion))/nrow(test)

confusionMatrix(a,test$class)
