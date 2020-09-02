x=read.csv("bank-additional.csv",header=TRUE,sep = ";")
x.head()

classes <- sapply(x, class)
classes

v=colnames(x)
v

dim(x)

good <- complete.cases(x)
dim(x[good, ])

unique.data.frame(x['job'])
unique.data.frame(x['education'])

colMeans(x['age'])

scaleval=function(x){
  y=(x-min(x))/(max(x)-min(x))
  return(y)}
scaleval(x)




