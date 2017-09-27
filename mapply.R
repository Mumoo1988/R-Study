#defin 3 vectors
x<--4:5
y<-4:-5
z<-round(runif(10, -5, 5))

#get max value by index sequence.
f3<-function(x, y, z){
  r<- mapply(max, x, y, z)
  print(r)
}

f4<-function(x, y, z){
  max<-NA
  for(i in 1:10)
  max[i] = max(x[i], y[i], z[i])
  print(max)
}

#get max value by index sequence.
f5<-function(){
  x<--4:5
  x1<-sample(x, size=10, replace = TRUE)
  y<-4:-5
  y1<-sample(y, size=10, replace = TRUE)
  z<- -5:5#round(runif(10, -5, 5))
  z1<-sample(z, size=10, replace = TRUE)
  
  r<- mapply(max, x1, y1, z1)
  print(r)
  
  max<-NA
  for(i in 1:10)
    max[i] = max(x1[i], y1[i], z1[i])
  print(max)
}


  