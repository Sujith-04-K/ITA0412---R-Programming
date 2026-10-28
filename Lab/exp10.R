exam_data <- data.frame(
  name=c("Veera","Sujith","Sai","Balaji"),
  score=c(90, 75, 85, 40),
  attempts=c(1, 2, 1, 3),
  qualify=c(TRUE, TRUE, TRUE, FALSE)
)

print(exam_data)

print(exam_data$name)
print(exam_data[1, ])
print(exam_data[, c("name", "score")])

exam_data[nrow(exam_data)+1, ] <-
  list("Chakri", 80, 1, TRUE)

exam_data$grade <- ifelse(exam_data$score >= 80, "A", "B")

print(exam_data[order(exam_data$score), ])

write.csv(exam_data, "exam_data.csv", row.names=FALSE)