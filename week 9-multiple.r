# Install and load necessary packages using pacman
if (!require("pacman")) install.packages('pacman')
pacman::p_load(caret, lars, dplyr, ggplot2)

# Load and view the dataset
data(USJudgeRatings)
head(USJudgeRatings)

# Prepare the data: Extract predictors and outcome variable
z <- as.matrix(USJudgeRatings[, -12])  # All columns except the 12th (RTEN)
y <- USJudgeRatings[, 12]  # Outcome variable RTEN (the rating)

# Fit the regression model
reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG + DECI + PREP + FAMI + ORAL + WRIT + PHYS, data = USJudgeRatings)

# Display the regression model output
summary(reg1)

# Plot diagnostic plots for the regression model
plot(reg1)
