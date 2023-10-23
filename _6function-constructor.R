# my_function <- function() {}

die <- 1:6
dice <- sample(die, size = 2, replace = TRUE)
sum(dice)

roll <- function() {
  die <- 1:6
  dice  <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

# to call the function write its name followed by parentheses
roll()

# without parentheses 
# R will print information about the function
roll

# function() {
#  die <- 1:6
#  dice  <- sample(die, size = 2, replace = TRUE)
#  sum(dice)
# }
# <bytecode: 0x55b1c7281a58>

# Here’s some code that would display a result:
dice
1+1
sqrt(2)

# Here’s some code that would not:
dice <- sample(die, size =  2, replace = TRUE)
two <- 1 + 1
a  <- sqrt(2)

