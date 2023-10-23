# Slot machine - All objects and functions

# get_symbols function
get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}

# score function
score <- function (symbols) {
  # identify case
  same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BB", "BBB")
  
  # get prize
  if (same) {
    payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[symbols[1]])
  } else if (all(bars)) {
    prize <- 5
  } else {
    cherries <- sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1]
  }
  
  # adjust for diamonds
  diamonds <- sum(symbols == "DD")
  prize * 2 ^ diamonds
}


# play function
play <- function() {
  # step 1: generate symbols
  symbols <- get_symbols()
  
  # step 2: generate a prize and set its attributes
  structure(score(symbols), symbols = symbols)
}


# slot display function
slot_display <- function(prize) {
  
  # extract symbols
  symbols <- attr(prize, "symbols")
  
  # collapse symbols into single string
  symbols <- paste(symbols, collapse = " ")
  
  # combine symbol with prize as a character string
  # \n is special escape sequence for a new line (i.e. return or enter)
  string <- paste(symbols, prize, sep = "\n$")
  
  # display character string in console without quotes
  cat(string)
}


one_play <- play()

# give one_play a class of its own
class(one_play) <- "slots"

args(print)

print.slots <- function(x, ...) {
  cat("I'm using the print.slots method")
}

print.slots

print(one_play)

rm(print.slots)


# R objects with multiple classes
now <- Sys.time()
attributes(now)


# Exercise 10.2 (Make a Print Method)
print.slots <- function(x, ...) {
  slot_display(x)
}

one_play


# Exercise 10.3 (Add a Class)
play <- function() {
  # step 1: generate symbols
  symbols <- get_symbols()
  
  # step 2: generate a prize, set its attributes and set class
  structure(score(symbols), symbols = symbols, class = "slots")
}


class(play())

play()  

play()


