payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
             "B" = 10, "C" = 10, "0" = 0)
payouts

payouts["DD"]
payouts["B"]

# Without symbol's name
unname(payouts["DD"])

symbols <- c("7", "7", "7")
symbols[1]
payouts[symbols[1]]

symbols <- c("C", "C", "C")
payouts[symbols[1]]


# Slot-machine - Score
# adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize
# adding look up table

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
             "B" = 10, "C" = 10, "0" = 0)

# if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
# } else if (all(bars)) {
  prize <- # assign $5
# } else {
  # count cherries
#   prize <- # calculate a prize
# }

# count diamonds
# double the prize if necessary


# Slot-machine - Score
# adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize
# adding look up table
# adding a prize for all bars

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
             "B" = 10, "C" = 10, "0" = 0)

if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} #  else {
  # count cherries
#   prize <- # calculate a prize
# }

# count diamonds
# double the prize if necessary
    

# Exercise 9.6 (Find C’s)

# My solution
symbols <- c("C", "C", "C")

symbols == "C"
sum(symbols == "C")

# Book solution
symbols <- c("C", "DD", "C")
symbols == "C"

sum(symbols == "C")
sum(symbols == "D")


# Slot-machine - Score
# adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize
# adding look up table
# adding a prize for all bars
# adding a code to count the number of diamonds

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
             "B" = 10, "C" = 10, "0" = 0)

if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} #  else {
# count cherries
#   prize <- # calculate a prize
# }

# count diamonds
diamonds <- sum(symbols == "DD")
# double the prize if necessary


# if tree to count the number of cherries

symbols <- c("C", "DD", "C")
cherries <- sum(symbols == "C")


if (cherries == 2) {
  prize <- 5
} else if (cherries == 1) {
  prize <- 2
} else {
prize <- 0
}

prize


# look up to count the number of cherries
symbols <- c("C", "C", "DD")
cherries <- sum(symbols == "C")
cherries


c(0, 2, 5)
c(0, 2, 5)[cherries + 1]


# Slot-machine - Score
# adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize
# adding look up table
# adding a prize for all bars
# adding a code to count the number of diamonds
# adding a code to count the number of cherries

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
             "B" = 10, "C" = 10, "0" = 0)

if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
}  else {
# count cherries
cherries <- sum(symbols == "C")
#   prize <- # calculate a prize
 }

# count diamonds
diamonds <- sum(symbols == "DD")
# double the prize if necessary


# Slot-machine - Score
# adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize
# adding look up table
# adding a prize for all bars
# adding a code to count the number of diamonds
# adding a code to count the number of cherries
# adding a code to return a correct prize for cherries


same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

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

diamonds <- sum(symbols == "DD")
# double the prize if necessary


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

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

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

diamonds <- sum(symbols == "DD")
prize * 2 ^ diamonds


