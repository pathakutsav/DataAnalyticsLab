library(datasets)
str(iris)

subset(iris, Species == "setosa")[1:10,]
subset(iris, Species == "versicolor")[1:10,]
subset(iris, Species == "virginica")[1:10,]

summary(iris)
corr <- cor(iris[,1:4])
round(corr,3)

install.packages("C50")
input <- iris[,1:4]
output <- iris[,5]

model1 <- C5.0(input, output, control = C5.0Control(noGlobalPruning = TRUE,minCases=1))
plot(model1, main="C5.0 Decision Tree - Unpruned, min=1")

model2 <- C5.0(input, output, control = C5.0Control(noGlobalPruning = FALSE))
plot(model2, main="C5.0 Decision Tree - Pruned")
