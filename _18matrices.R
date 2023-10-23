die <- c(1, 2, 3, 4, 5, 6)

# filling column by column
m <- matrix(die, nrow = 2)
m

#  [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

# filling row by row
m <- matrix(die, nrow = 2, byrow = TRUE)
m

# [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6


