fac <- factor(rep(1:3, length = 17), levels = 1:5)
f7<-function(fac) tapply(1:17, fac, sum)
f8<-function(fac){
  sum<-NA
  for(i in 1:3)
  {
   sum[i]<-0
  }
  for(i in 1:17){
  if(fac[i]==1)
   {sum[1] = sum[1]+i}
  else if (fac[i]==2)
   {sum[2] = sum[2]+i}
  else
   {sum[3] = sum[3]+i}
  }
  print(sum)
}

# Create titles for plots
titlenames <- c("tapply","loop_tapply")

# Loop over list of data frames and create plots
for (i in seq(titlenames)) {
  plot(x=(l[[i]]$a[l[[i]]$c==0]),y=(l[[i]]$b[l[[i]]$c==0]),main="",xlab="",ylab="")
  title(main=titlenames[i])
}
