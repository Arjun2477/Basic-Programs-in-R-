nums<-readline(prompt ="enter a series of number:")
nums
nums<-strsplit(nums,"")[[1]]
nums<-as.numeric(nums)
result_max<-max(nums)
result_min<-min(nums)
result_avg<-mean(nums)
result_sum<-sum(nums)
result_sqrt<-sqrt(nums)
result_round<-round(nums)
cat("maximum of values:",result_max,"\n")
cat("minimum of value:",result_min,"\n")
cat("average value:",result_avg,"\n")
cat("sum of values:",result_sum,"\n")
cat("square root:",result_sqrt,"\n")
cat("round:",result_round,"\n")

