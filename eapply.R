f2<-function(env){ 
output<-NA
for(i in 1:3){
if(i == 1)
{output[i] = mean(env$a)}
else if (i == 2)
{output[i] = mean(env$beta)}
else
{output[i] = mean(env$logic)}
 }
 print(output[1])
 print(output[2])
 print(output[3])
 }
f1<-function(env){
s<-eapply(env, mean)
print(s$a)
print(s$beta)
print(s$logic)
}