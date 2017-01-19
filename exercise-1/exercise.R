# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawksPoints <- c(20, 31, 31, 15, 5, 40, 10, 24, 31, 25, 26, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
seahawksScoredOn <- c(25, 25, 24, 26, 14, 5, 38, 7, 34, 23, 6, 36)

# Combine your two vectors into a dataframe
seahawks.data <- data.frame(seahawksPoints, seahawksScoredOn, stringsAsFactors=FALSE)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
seahawks.data$diff <- seahawksPoints - seahawksScoredOn
View(seahawks.data)

# Create a new column "won" which is TRUE if the Seahawks won
seahawks.data$won <- seahawks.data$diff > 0
seahawks.data[1,2]
# Create a vector of the opponent names corresponding to the games played


# Assign your dataframe rownames of their opponents


# View your data frame to see how it has changed!
