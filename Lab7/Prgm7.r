library(datasets)
str(iris)
install.packages("ggplot2")
install.packages("GGally")
library(ggplot2)
library(GGally)

ggpairs(iris)
ggpairs(iris,columns = 1:4)

ir_data<-iris[,1:4]
ir_data<-ir_data[1:100,]
set.seed(100)

train_v<-sample(1:100,80,replace=FALSE,prob=NULL)
test_v<-sample(1:100,20,replace=FALSE,prob=NULL)

train<-ir_data[train_v,]
test<-ir_data[test_v,]

ggpairs(train)
ggpairs(test)
