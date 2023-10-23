# Slot-machine - Score
# adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize
# adding look up table
# adding a prize for all bars
# adding a code to count the number of diamonds
# adding a code to count the number of cherries
# adding a code to return a correct prize for cherries
# adding a code to return a correct prize if any diamonds present or not
# adding comments

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


# Slot-machine - Score
# adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize
# adding look up table
# adding a prize for all bars
# adding a code to count the number of diamonds
# adding a code to count the number of cherries
# adding a code to return a correct prize for cherries
# adding a code to return a correct prize if any diamonds present or not
# adding comments
# create a function

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
  
  # step 2: display the symbols
  print(symbols)
  
  # step 3: score the symbols
  score(symbols)
}


play()

play()

play()


