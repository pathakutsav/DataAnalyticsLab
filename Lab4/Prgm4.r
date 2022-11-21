df=read.csv("/Users/utsavpathak/Downloads/Lab4/samplefile_1-Lab3.csv")
df1=read.csv("/Users/utsavpathak/Downloads/Lab4/samplefile_2-Lab3.csv")
df$revenue=(df[,1] * df[,2]) + (0.1 * (df[,1] * df[,2]))
df
df1$revenue=(df[,1] * df[,2]) + (0.085 * (df[,1] * df[,2]))
df1


df_average=mean(df[,2])
df_average
df1_average=mean(df1[,2])
df1_average
df_median=median(df[,2])
df_median
df1_median=median(df1[,2])
df1_median
df_median_rev=median(df[,5])
df_median_rev
df1_median_rev=median(df1[,5])
df1_median_rev
result_linearcorrelation = cor(df[,5],df1[,5], method = "pearson")
result_linearcorrelation
plot(df[,5],df1[,5])

linearregression_sugar<-lm(df[,5]~df[,2])
> linearregression_sugar

Call:
lm(formula = df[, 5] ~ df[, 2])

Coefficients:
(Intercept)      df[, 2]
     -88132         2125

> linearregression_maize<-lm(df1[,5]~df1[,2])
> linearregression_maize

Call:
lm(formula = df1[, 5] ~ df1[, 2])

Coefficients:
(Intercept)     df1[, 2]
     -86930         2096
