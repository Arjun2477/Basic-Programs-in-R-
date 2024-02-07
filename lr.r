library(readxl)
ah<-read_excel("ageandheight.xls")
View(ah)

plot(ah$age,ah$height,
xlab="age",
ylab="height",
main="scatter plot of age vs heigth",type="o")

library(caTools)

split=sample.split(ah$height,SplitRatio=0.7)
trainingset=subset(ah,split==TRUE)
testset=subset(ah,split==FALSE)
trainingset
testset


LM=lm(formula=height~age,data=trainingset)
coef(LM) 
summary(LM)

yp=predict(LM,newdata=testset)
yp
library(ggplot2)


ggplot()+geom_point(aes(x=trainingset$age,y=trainingset$height),colour='red')+
  geom_line(aes(x=trainingset$age,y=predict(LM,newdata = trainingset)),colour='blue')+
  ggtitle('Age vs Height(Training Set)')+
  xlab('AGE')+
  ylab('HEIGHT')
#Visualising the test set results
ggplot()+geom_point(aes(x=testset$age,y=testset$height),colour='red')+
  geom_line(aes(x=trainingset$age,y=predict(LM,newdata =trainingset)),colour='blue')+
  xlab('AGE')+
  ylab('HEIGHT')






