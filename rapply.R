#define data
x<-list(a=12,b=4:1,c=c('b','a'))
y<-pi
z<-list(a=rnorm(10),c=c('b','a', 'c','d', 'e', 'f', 'g', 'h', 'q', 't'))
a <- list(x=x,y=y,z=z)
#ascending sort a by integer data type 
rapply(a, sort, classes="integer", how = "replace")
f5<-function(a) rapply(a,function(x) paste(x,'++++'),classes="character",deflt=NA, how = "unlist")
f6<-function(a){
  
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
a <- c(1,2,3,4,5)
b <- c(6,7,8,9,10)
c <- c(0,0,0,1,0)

d <- c(1,2,3,4,5,6,7,8,9,10)
e <- c(11,12,13,14,15,16,17,18,19,20)
f <- c(0,0,0,0,0,0,0,1,0,0)

# Create data frames
df1 <- data.frame(cbind(a,b,c))
df2 <- data.frame(cbind(d,e,f))
names(df2) <- c("a","b","c")

# Create list of data frames
l <- list(df1,df2)

# Create titles for plots
titlenames <- c("Graph 1","Graph 2")

# Loop over list of data frames and create plots
for (i in seq(titlenames)) {
  plot(x=(l[[i]]$a[l[[i]]$c==0]),y=(l[[i]]$b[l[[i]]$c==0]),main="",xlab="",ylab="")
  title(main=titlenames[i])
}

