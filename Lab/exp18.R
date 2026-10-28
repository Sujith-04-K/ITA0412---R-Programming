boxplot(iris$Sepal.Length,
        main="Boxplot of Sepal Length")

hist(iris$Sepal.Length,
     main="Sepal Length Histogram")

barplot(table(iris$Species),
        main="Species Count")

plot(1:10, (1:10)^2,
     type="l", main="Line Chart")

plot(iris$Sepal.Length, iris$Petal.Length,
     main="Sepal vs Petal Length",
     xlab="Sepal Length",
     ylab="Petal Length")