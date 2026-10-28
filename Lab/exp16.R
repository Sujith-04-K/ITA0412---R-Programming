data(USArrests)

print(summary(USArrests))

print(rownames(USArrests)[which.max(USArrests$Rape)])

print(max(USArrests$Murder))
print(min(USArrests$Murder))

print(cor(USArrests))

result <- USArrests[
  USArrests$Assault > median(USArrests$Assault) &
    USArrests$Murder <= quantile(USArrests$Murder, 0.25), ]

print(result)

hist(USArrests$Murder, main="Murder Rates",
     xlab="Murder")

plot(density(USArrests$Assault),
     main="Assault Density")

plot(USArrests$Murder, USArrests$Assault,
     xlab="Murder", ylab="Assault")

top <- sort(USArrests$Assault, decreasing=TRUE)[1:10]
barplot(top, main="Top 10 Assault Rates",
        las=2)