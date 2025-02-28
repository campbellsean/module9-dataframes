# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
data <- data.frame(USPersonalExpenditure, stringsAsFactors = FALSE)
View(data)

# What are the column names of your dataframe?
colnames(data)

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

# What are the row names of your dataframe?
rownames(data)

# Create a column "category" that is equal to your rownames
data$category <- rownames(data)

# How much money was spent on personal care in 1940?
money.personal.care.1940 <- sum(data[, 1])

# How much money was spent on Food and Tobacco in 1960?
money.food.tobacco <- sum(data[1, ])

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
max.category <- max(data[ , "X1960"])
category <- data[data$category, max.category] # Doesn't work

# Define a function `DetectHighest` that takes in a year as a parameter, and
DetectHighest <- function(year) {
  # Returns the highest spending category of that year
}

# Using your function, determine the highest spending category of each year
