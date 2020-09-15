X=iris
head(X)
x=X[,'Sepal.Length']
y=X[,'Petal.Length']
head(x)
head(y)
model1<- lm(y~x)
model1
plot(y~x, col=x)
abline(model1, col="blue", lwd=3)
head(model1$fitted.values)
  
sum((model1$fitted.values-y)^2)
p <-function(a){
  return(-7.101443+1.858433*a)
}

p(20)
