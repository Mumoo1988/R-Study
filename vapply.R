#generate data set
x <- data.frame(cbind(x1=3, x2=c(2:1,4:5)))
#set row name sequentially: a, b, c, d
f9<-function(x) vapply(x,cumsum,FUN.VALUE=c('a'=0,'b'=0,'c'=0,'d'=0))

#if not use vapply, the row name is index value.
f10 <- function(x)
{a<-sapply(x,cumsum);a
#manually set row names for a.
row.names(a)<-c('a','b','c','d')
print(a)
}
  