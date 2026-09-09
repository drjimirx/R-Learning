# Define a 2x3 matrix
A <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Define a 3x2 matrix
B <- matrix(c(7, 8, 9, 10, 11, 12), nrow = 3, ncol = 2)

# Perform standard matrix multiplication
result <- A %*% B
print(result)
