roll <- function() {
  die <- 1:6
  dice  <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll()


roll2 <- function() {
  dice <- sample(bones, size = 2, replace  = TRUE)
  sum(dice)
}

# roll2()
# Error in roll2() : object 'bones' not found


roll3 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll3(bones = 1:4)
roll3(bones = 1:6)
roll3(1:20)

roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll4 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll4()


