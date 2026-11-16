data(ChickWeight)

ChickWeight$Diet <- factor(ChickWeight$Diet)

model <- lm(weight ~ Time + Diet, data=ChickWeight)
print(summary(model))

newdata <- data.frame(
  Time=c(10, 20, 30),
  Diet=factor(c("1", "2", "3"),
              levels=levels(ChickWeight$Diet))
)

pred <- predict(model, newdata=newdata)
print(pred)

actual <- ChickWeight$weight
fitted <- predict(model)
mse <- mean((actual - fitted)^2)
print(mse)