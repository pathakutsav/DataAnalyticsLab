months<-seq(1,12)
months
df=read.csv("/Users/utsavpathak/Downloads/LAB10.csv")
plot(months,df[1,2:13],type="l",col="red")
lines(months,df[2,2:13],types="l",col="blue")
lines(months,df[3,2:13],types="l",col="blue")
lines(months,df[4,2:13],types="l",col="blue")
lines(months,df[5,2:13],types="l",col="blue")
