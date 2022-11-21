install.packages("rjson")
library("rjson")
input<-fromJSON(file="/Users/utsavpathak/Downloads/labtask5_file.json")
df=as.data.frame(input)
df$ID <- as.numeric(sapply(strsplit(as.character(df$ID), ","), function(x) x[1]))
df$Salary <- as.numeric(sapply(strsplit(as.character(df$Salary), ","), function(x) x[1]))
df$Earnings <- as.numeric(sapply(strsplit(as.character(df$Earnings), ","), function(x) x[1]))
df

mean(df$Salary, na.rm = TRUE)
sd(df$Salary, na.rm = TRUE)
median(df$Salary, na.rm = TRUE)

df$OneYearSalary=(df[,2] +(df[,2]*0.1))
df
df$TwoYearSalary=(df[,6] +(df[,6]*0.1))
df

for (x in 1:25){
print(paste("Earning As Percentage Of Salary For Employee",x, " = ",(df$Earnings[x] / df$Salary[x]) * 100,"%"))
}

x<-sort(x)
y<-sort(y)
plot(x,y,type="l",xlab="Salary",ylab="Earnings")

plot(x,y, col="blue", xlab="Salary", ylab="Earnings", main="Earnings vs Salary Regression")
abline(lm(y~x), col="Red")

model <- lm(y ~ x, data = df)
model
predict(model, newdata = df)

df$Predicted<-predict(model, newdata = df)
df$Difference=(df[,8]-df[,3])
