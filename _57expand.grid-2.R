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


play()

# Exercise 11.1 (List the Combinations)
wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")

# My solution
combos <- expand.grid(wheel, wheel, wheel, stringsAsFactors = FALSE)
combos


# Exercise 11.2 (Make a Look-up Table) 

# My solution
# the probability of getting each combination
prob = c("DD" = 0.03, "7" = 0.03, "BBB" = 0.06, "BB" = 0.1, "B" = 0.25, "C" = 0.01, "0" = 0.52)


# Exercise 11.3 (Lookup the Probabilities)

# My solution
combos$prob1 <- prob[combos$Var1]
combos$prob2 <- prob[combos$Var2]
combos$prob3 <- prob[combos$Var3]
head(combos, 3)

# Exercise 11.4 (Calculate Probabilities for Each Combination)

# My solution
combos$prob <- combos$prob1 * combos$prob2 * combos$prob3

# head prints probabilities converted to scientific notation
# this behaviour can be if options(scipen = 999) is set globally 

# Set the scipen option to a large value to prevent scientific notation
options(scipen = 999)
head(combos, 3)

# The probabilities should add up to one, 
# because one of the combinations must appear when you play the slot machine. 
# In other words, a combination will appear, with probability of one.
sum(combos$prob)

# calculate the prize for the first row of combos
symbols <- c(combos[1, 1], combos[1, 2], combos[1, 3])

score(symbols)



