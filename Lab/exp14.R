data(ChickWeight)

print(head(ChickWeight))
print(summary(ChickWeight))

sorted <- ChickWeight[order(ChickWeight$weight), ]
print(head(sorted))

library(reshape2)

m <- melt(ChickWeight,
          id.vars=c("Chick", "Time", "Diet"))
print(head(m))

result <- dcast(m, Time ~ Diet,
                value.var="value",
                fun.aggregate=mean)
print(head(result))