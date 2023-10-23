deck <- read.csv(file = "cards.csv", header = TRUE)
str(deck)

deck[ , ]

# Positive integers
head(deck)

deck[1, 1]
deck[1, c(1, 2, 3)]

new <- deck[1, c(1, 2, 3)]
new

# If you repeat a number in your index,
# R will return the corresponding value(s)
# more than once in your “subset.” 
deck[c(1, 1), c(1, 2, 3)]


vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]


# If you select two or more columns from a data frame,
# R will return a new data frame

nf1 <- deck[1:2, 1:2]
class(nf1)

# if you select a single column, 
# R will return a vector
nf2 <- deck[1:2, 1]
class(nf2)

# If you would prefer a data frame instead, 
# you can add the optional 
# argument drop = FALSE between the brackets
nf3 <- deck[1:2, 1, drop = FALSE]
class(nf3)

# This method also works for selecting
# a single column from a matrix or an array


# Negative integers
deck[-(2:52), 1:3]

deck[c(-1, 1), 1]
# Error in xj[i] : only 0's may be mixed with negative subscripts


# Zero
deck[0, 0]
# data frame with 0 columns and 0 rows


# Blank Spaces
deck[1, ]


# Logical values
deck[1, c(TRUE, TRUE, FALSE)]

rows <- c(TRUE, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, F, F)
deck[rows, ]


# Names
deck[1, c("face", "suit", "value")]
# the entire value column
deck[ , "value"]


