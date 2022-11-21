Write to do following
1) R program to read 'testfile.csv'
2) Store values in array
3) Provide linePlot B against A
4) Compute D = (col B + col C)/(col A)
5) Provide linePlot D against A
6) Compute E = average of A, B, C, D
7) Provide list of rows where Value of E > median (E)
8) Sort array in ascending order of E
////
df=read.csv("/Users/utsavpathak/Downloads/testfile.csv")
lst1=list()
for(i in 1:ncol(df)){
lst1[[i]]<-df[,i]
}
arr = array(unlist(lst1), dim = c(15,3))
print(arr)
////
arr = array(unlist(lst1), dim = c(15,5))
for(i in 1:15){
arr[i,4]<-(arr[i,2]+arr[i,3])/arr[i,1]
}
print(arr)
////
for(i in 1:15){
arr[i,5]<-(arr[i,1]+arr[i,2]+arr[i,3]+arr[i,4])/4
}
print(arr)
plot (arr[,4],arr[,1])
////
med<-median(arr[,5])
print(med)
////
for(i in 1:15){
if(arr[i,5]>med){
print(arr[i,])
}
}
////
sort(arr[,5],decreasing=FALSE)
