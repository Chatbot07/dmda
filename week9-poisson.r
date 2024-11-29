# Generate data for treatment and outcome
treatment <- rep(c("g1", "g2", "g3"), each = 3)
outcome <- c(3, 1, 9, 5, 2, 8, 7, 4, 6)  # Example values
counts <- c(18, 21, 15, 17, 10, 16, 25, 13, 22)

# Create the data frame
d.AD <- data.frame(treatment = treatment, outcome = outcome, counts = counts)
print(d.AD)

# Generate random variables
x <- rnorm(100)
y <- rpois(100, exp(1 + x))  # Poisson distributed y based on x

# Fit a GLM model with a Poisson distribution
fit1 <- glm(counts ~ outcome + treatment, data = d.AD, family = poisson())

# Display the summary of the model
summary(fit1)

# Plot the diagnostics for the model
plot(fit1)
