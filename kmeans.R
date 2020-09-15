require('datasets')
data(iris)
str(iris)
summary(iris)
irisdata <- iris[,c(1,2,3,4)]
irisclass <- iris[,"Species"]
head(irisdata)
head(irisclass)
result <- kmeans(irisdata,3)
result$size  #gives the sizes of cluster
result$cluster # array of points mapping to cluster

par(mfrow=c(2,2),mar=c(5,4,2,2))
plot(irisdata[c(1,2)],col=result$cluster)
plot(irisdata[c(1,2)],col=irisclass)
plot(irisdata[c(3,4)],col=result$cluster)
plot(irisdata[c(3,4)],col=irisclass)
table(result$cluster,irisclass)

library(ggplot2)
ggplot(iris,aes(Petal.Length,Petal.Width,color=Species))+geom_point()
set.seed(20)
irisCluster <-kmeans(iris[,3:4],3,20)
irisCluster
table(irisCluster$cluster,iris$Species)
irisCluster$cluster<-as.factor(irisCluster$cluster)
ggplot(iris,aes(Petal.Length,Petal.Width,color=irisCluster$cluster))+geom_point()
