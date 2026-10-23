height <- factor(c("Short", "Tall", "Medium", "Tall"))
print(height)
print(levels(height))

letters_sample <- factor(sample(LETTERS, 10))
print(letters_sample)

height <- factor(height, levels=c("Short","Medium","Tall"))
print(height)