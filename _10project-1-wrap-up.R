roll <- function() {
  die <- 1:6
  dice  <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

replicate(10, roll())
replicate(10000, roll())


# Weighted die
weighted_roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE,
                  prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}

replicate(10000, weighted_roll())


