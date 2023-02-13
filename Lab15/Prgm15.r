library(MASS)
data(cats, package="MASS")
str(cats)
head(cats)
library(lattice)
xyplot(Hwt ~ Bwt | Sex, data=cats, type=c("p","g","r"),
       xlab="Body weight (kg)",
       ylab="Heart weight (g)")
xyplot(Hwt ~ Bwt, groups=Sex, data=cats, type=c("p","g","r"),
       xlab="Body weight (Kilograms)",
       ylab="Heart weight (Grams)",
       auto.key=TRUE)
summary(cats_1 <- lm(Hwt ~ Bwt, data=cats))
summary(cats_2 <- lm(Hwt ~ Bwt + Sex, data=cats))
summary(lm(Hwt ~ Bwt:Sex, data=cats))
show(vm <- vcov(cats_3)[c(2,4), c(2,4)])
sqrt(vm[1,1]+vm[2,2]+2*vm[1,2])
summary(lm(Hwt ~ Bwt, data=cats, subset=Sex=='M'))


Inferences: What is the difference between the slope estimate for male cats in Model 3 we have used earlier and that in the analysis of the male cats alone?
Ans: Bwt slope in [lm(Hwt ~ Bwt, data=cats, subset=Sex==‘M’)] (4.313) = Bwt slope (2.636) + Bwt:SexM slope (1.676) in Model 3. Bwt:SexM is the interation of sex among Bwt.

Why is that the standard error for the slope estimate of female cats is much larger than that for male cats?
Ans: The female cat’s sample size smaller than male cat
