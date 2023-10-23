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

# print method for the slots class
print.slots <- function(x, ...) {
  slot_display(x)
}

# play function
play <- function() {
  # step 1: generate symbols
  symbols <- get_symbols()
  
  # step 2: generate a prize, set its attributes and set class
  structure(score(symbols), symbols = symbols, class = "slots")
}



# methods will return every method written for the class
methods(class = "factor")

# Consider two challenges that you will face right away. 
# First, R drops attributes (like class) when it combines objects into a vector
play1 <- play()
play1

play2 <- play()
play2

c(play1, play2)

# Second, R will drop the attributes of an object (like class) when you subset the object
play1[1]



