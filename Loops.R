Loop1<-function(){
output1<-rep(NA,10000)
for (i in 1:1000){
  output1[i]<-i+1
}
}
#NA: Missing value or NOt available.
Loop2<-function(){
  output2<-NA
  for (i in 1:10000){
    output2[i]<-i+1
    
  }
  print (output2)
}

