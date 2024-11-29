# Define vectors for x (height) and y (weight)
x <- c(151, 174, 158, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 71, 47, 57, 76, 72, 62, 48)

# Perform linear regression
relation <- lm(y ~ x)

# Print model coefficients
print(relation)

# Print summary of the model
print(summary(relation))

# Create a new data frame for prediction
a <- data.frame(x = 160)

# Predict the weight for x = 160
result <- predict(relation, a)

# Print the predicted result
print(result)

# Plot the data and add the regression line
plot(x, y, col = 'blue', main = "Height & Weight Regression", 
     xlab = "Weight in kg", ylab = "Height in cm", pch = 16)
abline(relation, col = 'red')  # Add regression line
