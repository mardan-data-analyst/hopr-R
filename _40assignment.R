assign("new", "Hello Global", envir = globalenv())
globalenv()$new
new

new <- "Hello Active"
new


roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}


