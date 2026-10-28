library(reshape2)

data(airquality)

m <- melt(airquality,
          id.vars=c("Month", "Day"))

print(head(m))

c <- dcast(m, Month ~ variable,
           fun.aggregate=mean, na.rm=TRUE)
print(c)

monthly <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data=airquality,
  FUN=mean,
  na.rm=TRUE
)

print(monthly)