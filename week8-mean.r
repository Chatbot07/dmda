# Sample data
data <- c(2, 4, 6, 8, 10)

# Mean calculation
mean_value <- mean(data)
print(paste('mean', mean_value))

# Median calculation
median_value <- median(data)
print(paste('median', median_value))

# Mode calculation (Custom function)
getmode <- function(data) {
  uniq_data <- unique(data)  # Get unique values
  mode_value <- uniq_data[which.max(tabulate(match(data, uniq_data)))]  # Find the mode
  return(mode_value)
}

# Mode result
result <- getmode(data)
print(paste('mode', result))
