a <- array(1:12, dim=c(2, 3, 2),
           dimnames=list(
             c("R1","R2"),
             c("C1","C2","C3"),
             c("T1","T2")
           ))
print(a)
print(a[1, 2, 1])
print(a[, , 2])