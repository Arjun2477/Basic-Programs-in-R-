x<-c(1,2,3,4,5,1,2,3,1,2,4,5,2,3,1,1,2,3,5,6)
mean_result=mean(x)
print("mean value is:")
print(mean_result)

x<-c(1,2,3,4,5,1,2,3,1,2,4,5,2,3,1,1,2,3,5,6)
median_result=median(x)
print("median value is:")
print(median_result)

variance_result=var(x)
print("variance is:")
print(variance_result)

sd_result=sqrt(var(x))
print("sd is:")
print(sd_result)

mode<-function(x){
  ux<-unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
mode_result=mode(x)
print("mode:")
print(mode_result)

