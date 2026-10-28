data(Titanic)

df <- as.data.frame(Titanic)

survival <- xtabs(Freq ~ Class + Survived, data=df)
barplot(t(survival), beside=TRUE,
        legend=TRUE,
        main="Survival by Class")

gender <- xtabs(Freq ~ Sex + Survived, data=df)
barplot(t(gender), beside=TRUE,
        legend=TRUE,
        main="Survival by Gender")
