# The apply family of functions manipulate slices of data 

#eXAMPLE:
a<-matrix(1:12,ncol=3)
c<-apply(a,1,sum)

a<-matrix(1:12)#A 1D matrix (not vector).
c<-apply(a,1,sum)

a<-matrix(1:12) 
c<-apply(t(a),1,sum)#
a<-array(1:24,dim=c(2,3,6))
c<-apply(a,3,sum)
d<-apply(a,3,diag) 

e<-apply(a,1,sum)
#Watch out for coercion if you run "apply" on a data frame. 
a<-matrix(1:12, ncol=3)
b<-matrix(rep(F,times=12),ncol=3)
c1<-cbind(as.data.frame(a),as.data.frame(b))#Combine into a dataframe with mixed types. 
c2<-apply(c1,2,function(x) x)

A1<-matrix(1:12,ncol=3)
A2<-matrix(1:12,ncol=4)
A3<-list(A1,A2)
A5<-lapply(A3,is.na)
A4<-lapply(A3,mean)
#How does it treat a dataframe? lets see ...

a<-matrix(1:12, ncol=3)
b<-matrix(rep(F,times=12),ncol=3)
c1<-cbind(as.data.frame(a),as.data.frame(b))
A6<-lapply(c1, function(x) x)

A4_1<-sapply(A3,mean)#
A4_2<-lapply(A3,mean)#For comparison purpose.

A6_1<-sapply(c1, function(x) x)#
A6_1<-lapply(c1, function(x) x)#For comparison purposes.

f<-letters[c(1,2,3,5)]
g<-letters[c(2,3,6,2)]
h<-letters[c(4,5,9,2)]
i<-letters[c(2,3,4,5)]
ww<-list(f,g,h)
mm<-list(f,h,i)
find<-function(x) x[x=="b"]
sapply(ww,find)
sapply(mm,find)
vapply(ww,find,FUN.VALUE = character(1))
vapply(mm,find,FUN.VALUE = character(1))
microbenchmark(vapply(mm,find,FUN.VALUE = character(1)),sapply(mm,find))

roll<-function(){
 die=1:6
 dice<-sample(die,size=2,replace = TRUE)
 sum(dice)
 }
roll()
#using replicate to play with a key data analysis concept...
t<-replicate(10,roll())
qplot(t,binwidth=1)
t1<-replicate(100,roll())
qplot(t1,binwidth=1)
t1<-replicate(1000,roll())
qplot(t1,binwidth=1)
#The Central Limit Theorem
#is one of the most powerful concepts in all of statistics.
#Due to the CLT, a sum of i.i.d. random variables is normally distributed (large n):
#A more common version of it is mean of iid samples. 
#Tends to normal, regardless of the population distribution