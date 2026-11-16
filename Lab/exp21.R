data(iris)
set.seed(123)

idx <- sample(1:nrow(iris), 0.8*nrow(iris))
train <- iris[idx, ]
test <- iris[-idx, ]

library(nnet)

model <- multinom(
  Species ~ Petal.Length + Petal.Width,
  data=train,
  trace=FALSE
)

pred <- predict(model, newdata=test)
print(pred)

cm <- table(Actual=test$Species, Predicted=pred)
print(cm)

accuracy <- sum(diag(cm)) / sum(cm)
print(accuracy)