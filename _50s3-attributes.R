deck <- read.csv(file = "cards.csv", header = TRUE)

attributes(deck)

# names
names(deck)

# dimensions
dim(deck)

# class
class(deck)

# row names
row.names(deck)

# change row names attribute
row.names(deck) <- 101:152
row.names(deck)

# levels
levels(deck) # NULL

# assign levels
levels(deck) <- c("level 1", "level 2", "level 3")

attributes(deck)


# Real world example

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


one_play <- play()
one_play

attributes(one_play)

# attr function

# assign attributes
attr(one_play, "symbols") <- c("B", "0", "B")

# check attributes
attributes(one_play)

# look up the value of attribute
attr(one_play, "symbols")

one_play

one_play + 1


# Exercise 10.1 (Add an Attribute)
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
  
  # step 2: score the symbols and save the output
  prize <- score(symbols)
  
  # step 3: assign attributes
  attr(prize, "symbols") <-  symbols
  
  # step 4: return the prize
  prize
}


play()

two_play <- play()
two_play


# Generate a prize and set its attributes in one step with the structure function
# play function

play2 <- function() {
  # step 1: generate symbols
  symbols <- get_symbols()
  
  # step 2: generate a prize and set its attributes
  structure(score(symbols), symbols = symbols)
}

three_play <- play2()

three_play


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

slot_display(one_play)
one_play

# steps of slot display
# step 1. assign attributes to symbols of prize and extract symbols
symbols <- attr(one_play, "symbols")
symbols

# step 2. collapse symbols into single string
symbols <- paste(symbols, collapse = " ")
symbols

prize <- one_play
prize

# step3. combine symbol with prize as a character string
# \n is special escape sequence for a new line (i.e. return or enter)
string <- paste(symbols, prize, sep = "\n$")

# step 4. display character string in console without quotes
cat(string)

slot_display(play())


# the reason why separate objects are combined while prize contains both prize and symbols character
symbols
prize

string2 <- paste(prize, attributes(prize), collapse = "[1]")
string2


