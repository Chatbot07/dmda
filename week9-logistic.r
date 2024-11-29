# Load libraries and dataset
library(caret)
library(mlbench)
data(BreastCancer, package = "mlbench")

# Preprocess data: Remove missing values
b_canc <- na.omit(BreastCancer)

# Split data into training and testing sets
set.seed(100)
train_index <- createDataPartition(b_canc$Class, p = 0.8, list = FALSE)
train_data <- b_canc[train_index, ]

# Fit logistic regression model
fit <- glm(Class ~ Cell.Shape + Cl.thickness, family = binomial, data = train_data)

# Output model summary and plot
summary(fit)
plot(fit)
