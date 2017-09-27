#define data
x<-list(a=12,b=4:1,c=c('b','a'))
y<-pi
z<-list(d=rnorm(10),e=c('b','a', 'c','d', 'e', 'f', 'g', 'h', 'q', 't'))
q <- list(x=x,y=y,z=z)
#ascending sort a by integer data type 
rapply(q, sort, classes="integer", how = "replace")
f5<-function(q) rapply(q,function(x) paste(x,'++++'),classes="character",deflt=NA, how = "unlist")
f6<-function(q){
  n<-1
  for(i in q)
  {
    for(j in i) 
    {
      if(typeof(j)== "character") 
      {
        j<-paste(j, '++++')
        if(n==3) {i$c<-j
        q$x$c<-j 
        }
        else {
          i$e<-j
          q$z$e<-j
        }
        #print(p)
      }
      print(j)
      n = n+1
      print(n)
    }
    #print(i)
  }
  print(q)
}
  

X <- list(list(a = pi, b = list(c = 1:1)), d = "a test")
rapply(X, function(x) x, how = "replace")
rapply(X, sqrt, classes = "numeric", how = "replace")
rapply(X, nchar, classes = "character",
       deflt = as.integer(NA), how = "list")
rapply(X, nchar, classes = "character",
       deflt = as.integer(NA), how = "unlist")
rapply(X, nchar, classes = "character", how = "unlist")
rapply(X, log, classes = "numeric", how = "replace", base = 2)



# Create data
a <- c('b','a')
b <- c('b','a', 'c','d', 'e', 'f', 'g', 'h', 'q', 't')
c <- c('x','y', 'z','d', 'e', 'f', 'g', 'h')

d <- c(1,2,3,4,5,6,7,8,9,10)
e <- c(11,12,13,14,15,16,17,18,19,20)
f <- c(0,0,0,0,0,0,0,1,0,0)

# Create data frames
df1 <- data.frame(cbind(a,b,c))
df2 <- data.frame(cbind(d,e,f))
names(df2) <- c("a","b","c")

# Create list of data frames
l <- list(df1,df2)

#ascending sort a by integer data type 
f5<-function(l) rapply(l,function(x) paste(x,'++++'),classes="character",deflt=NA, how = "unlist")
f6<-function(a){
  for(i in a)
  {
    if(typeof(i$x$a) == "character") a[[i]]$a[l[[i]]$c==0]
  }
}

# Create titles for plots
titlenames <- c("Graph 1","Graph 2")

# Loop over list of data frames and create plots
for (i in seq(titlenames)) {
  plot(x=(l[[i]]$a[l[[i]]$c==0]),y=(l[[i]]$b[l[[i]]$c==0]),main="",xlab="",ylab="")
  title(main=titlenames[i])
}

