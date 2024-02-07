a<-matrix(c(2,4,6,2),nrow = 2,ncol = 2)
a
b<-matrix(c(4,3,7,9),nrow = 2,ncol=2)
b
num_of_rows<-nrow(a)
num_of_cols<-ncol(a)
sum=matrix(0,nrow = num_of_rows,ncol=num_of_cols)
sum
cat("addition ot matrix a&b:")
print(a+b)
cat("subtraction of matrix a&b")
print(a-b)
cat("multiplication matrix a&b:")
print(a*b)
cat("division of matrix a&b:")
print(a/b)
cat("transpose of matrix a:")
transpose<-t(a)
print(transpose)
cat("inverse os matrix a:")
inverse<-solve(a)
print(a)

