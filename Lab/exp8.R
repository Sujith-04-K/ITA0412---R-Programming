x <- rnorm(100, mean=0, sd=1)
print(x)

cat("Positive:", sum(x > 0), "\n")
cat("Negative:", sum(x < 0), "\n")