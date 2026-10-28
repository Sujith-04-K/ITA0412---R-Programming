data(iris)

print(dim(iris))
print(summary(iris))

print(sapply(iris[1:4], sd))
print(sapply(iris[1:4], quantile))

print(aggregate(. ~ Species, data=iris, mean))

print(xtabs(~ Species, data=iris))

iris$Length_Category <- cut(
  iris$Sepal.Length,
  breaks=c(4, 5, 6, 8),
  labels=c("Short", "Medium", "Long"),
  include.lowest=TRUE
)

print(table(iris$Length_Category))
print(table(iris$Species, iris$Length_Category))