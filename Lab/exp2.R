m1 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE)
print(m1)
m2 <- matrix(1:9, nrow=3, ncol=3, byrow=FALSE)
print(m2)
m3 <- matrix(1:4, nrow=2, ncol=2,
             dimnames=list(c("R1","R2"), c("C1","C2")))
print(m3)