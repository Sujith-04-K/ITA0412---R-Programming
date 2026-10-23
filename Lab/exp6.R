mylist <- list(
  numbers = c(10, 20, 30),
  matrix = matrix(1:4, nrow=2),
  greet = function() print("Hello R")
)

print(mylist)
print(mylist$numbers)
print(mylist$matrix)
mylist$greet()