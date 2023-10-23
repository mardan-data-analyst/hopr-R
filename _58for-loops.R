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


# for loops
for (value in c("My", "first", "for", "loop")) {
  print("one run")
}

for (value in c("My", "first", "for", "loop")) {
  cat("one run")
}

for (value in c("My", "first", "for", "loop")) {
  print(value)
}

value


for (word in c("My", "second", "for", "loop")) {
  print(word)
}

for (string in c("My", "second", "for", "loop")) {
  print(string)
}

for (i in c("My", "second", "for", "loop")) {
  print(i)
}

# for loops do not return output
for (value in c("My", "third", "for", "loop")) {
  value
}

value

for (value2 in c("My", "third", "for", "loop")) {
}

value2


# create an empty vector
chars <- vector(length = 4)
words <- c("My", "fourth", "for", "loop")

for (i in 1:4) {
  chars[i] <- words[i]
}

chars


# Practical example of for loop

# Possible values of a wheel
wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")

# the probability of getting each combination
prob = c("DD" = 0.03, "7" = 0.03, "BBB" = 0.06, "BB" = 0.1, "B" = 0.25, "C" = 0.01, "0" = 0.52)

# data frame containing combination of three wheel
combos <- expand.grid(wheel, wheel, wheel, stringsAsFactors = FALSE)

# look up the Probabilities
combos$prob1 <- prob[combos$Var1]
combos$prob2 <- prob[combos$Var2]
combos$prob3 <- prob[combos$Var3]

# probabilities for each combination
combos$prob <- combos$prob1 * combos$prob2 * combos$prob3

# for loop to calculate the prize for each row in combos
# create a new column in combos to store the results of the for loop:
combos$prize <- NA

head(combos, 3)

# Exercise 11.5 (Build a Loop)

# My solution
for (i in 1:length(combos$prize)) {
  combos$prize[i] <- score(c(combos[i, 1], combos[i, 2], combos[i, 3]))
}

head(combos)

# Book solution
for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}

head(combos)

# calculate the expected value of the prize
sum(combos$prize * combos$prob)

# This is also the payout rate of the slot machine


# Exercise 11.6 (Challenge)

# My solution

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
  
  if (diamonds > 0) {
    prize <- prize * 2 ^ diamonds
  }
}

rm(symbols)

symbols <- c("B", "BB", "BBB")
score(symbols)

# Course solution
rm(symbols)
rm(score)

score <- function(symbols) {
  
  diamonds <- sum(symbols == "DD")
  cherries <- sum(symbols == "C")
  
  # identify case
  # since diamonds are wild, only non diamonds 
  # matter for three of a kind and all bars
  slots <- symbols[symbols != "DD"]
  same <- length(unique(slots)) == 1
  bars <- slots %in% c("B", "BB", "BBB")
  
  # assign prize
  if (diamonds == 3) {
    prize <- 100
  } else if (same) {
    payouts <- c("7" = 80, "BBB" = 40, "BB" = 25,
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[slots[1]])
  } else if (all(bars)) {
    prize <- 5
  } else if (cherries > 0) {
    # diamonds count as cherries
    # so long as there is one real cherry
    prize <- c(0, 2, 5)[cherries + diamonds + 1]
  } else {
    prize <- 0
  }
  
  # double for each diamond
  prize * 2^diamonds
}


# Exercise 11.7 (Calculate the Expected Value)

# My solution
for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}

head(combos)

# calculate the expected value of the prize
sum(combos$prize * combos$prob)

# This is also the payout rate of the slot machine



# Slot machine - All objects and functions

# get_symbols function
get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}

score <- function(symbols) {
  
  diamonds <- sum(symbols == "DD")
  cherries <- sum(symbols == "C")
  
  # identify case
  # since diamonds are wild, only non diamonds 
  # matter for three of a kind and all bars
  slots <- symbols[symbols != "DD"]
  same <- length(unique(slots)) == 1
  bars <- slots %in% c("B", "BB", "BBB")
  
  # assign prize
  if (diamonds == 3) {
    prize <- 100
  } else if (same) {
    payouts <- c("7" = 80, "BBB" = 40, "BB" = 25,
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[slots[1]])
  } else if (all(bars)) {
    prize <- 5
  } else if (cherries > 0) {
    # diamonds count as cherries
    # so long as there is one real cherry
    prize <- c(0, 2, 5)[cherries + diamonds + 1]
  } else {
    prize <- 0
  }
  
  # double for each diamond
  prize * 2^diamonds
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


