a <- 3.14

dec <- a - trunc(a)
dec


# else
if (dec >= 0.5) {
  a <- trunc(a) + 1
} else {
  a <- trunc(a)
}

a


# else if
a <- 1
b <- 1

if (a > b) {
  print("A wins!")
} else if (a < b) {
print("B wins!")
} else {
  print("Tie")
}


# Skeleton of score function

# if ( # Case 1: all the same <1>) {
#   prize <- # look up the prize <3>
#   } else if ( # Case 2: all bars <2> ) {
#     prize <- # assign $5 <4>
#     } else {
#      # count cherries <5>
#       prize <- # calculate a prize <7>
#    }

# count diamonds <6>
# double the prize if necessary <8>

# Subtasks
# 1. Test whether the symbols are three of a kind.
# 2. Test whether the symbols are all bars.
# 3. Look up the prize for three of a kind based on the common symbol.
# 4. Assign a prize of $5.
# 5. Count the number of cherries.
# 6. Count the number of diamonds.
# 7. Calculate a prize based on the number of cherries.
# 8. Adjust the prize for diamonds.


# 1. Test whether the symbols are three of a kind.



# In English: A vector named symbols will contain three of the same symbol if the first element of symbols is 
# equal to the second element of symbols and the second element of symbols is equal to the third element of symbols.

symbols <- c("7", "7", "7")

symbols <- c("C", "DD", "0")

# Exercise 9.4 (Write a Test)

# In R:
# 1st method
if (symbols[1] == symbols[2] & symbols[2] == symbols[3]) {
  print(symbols)
}

# 2nd method
if (symbols[1] == symbols[2] & symbols[1] == symbols[3]) {
  print(symbols)
}

# 3rd method
if (all(symbols == symbols[1])) {
  print(symbols)
}

# 4th method
if (length(unique(symbols) == 1)) {
  print(symbols)
}


# Slot-machine - adding logical test
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]

# if (same) {
#   prize <- # look up the prize
# } else if ( # Case 2: all bars ) {
#   prize <- # assign $5
#   } else {
#     # count cherries
#     prize <- # calculate a prize
#  }

# count diamonds
# double the prize if necessary


# Exercise 9.5 (Test for All Bars)


symbols <- c("B", "BB", "BBB")

# My solution
bars <- all("B" %in% symbols)

if (bars) {
  print(symbols)
}

# Book solution

symbols[1]  == "B" | symbols[1] == "BB" | symbols[1] == "BBB" &
  symbols[2]  == "B" | symbols[2] == "BB" | symbols[2] == "BBB" &
  symbols[3]  == "B" | symbols[3] == "BB" | symbols[3] == "BBB"

all(symbols %in% c("B", "BB", "BBB"))


# Slot-machine - adding logical test fort the same symbols
# adding logical test for all bars
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

# if (same) {
#  prize <- # look up the prize
# } else if (all(bars)) {
#   prize <- # assign $5
# } else {
#   # count cherries
#   prize <- # calculate a prize
# }

# count diamonds
# double the prize if necessary


symbols <- c("B", "B", "B")
all(symbols %in% c("B", "BB", "BBB"))



# Slot-machine - adding logical test fort the same symbols
# adding logical test for all bars
# adding if tree to calculate prize

rm(prize)
symbols <- c("B", "B", "B")
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
symbols[1] == symbols[2]

if (same) {
  symbol <- symbols[1]
  if (symbol == "DD") {
    prize <- 800
  } else if (symbol == "7") {
    prize <- 80
  } else if (symbol == "BBB") {
    prize <- 40
  } else if (symbol == "BB") {
    prize <- 5
  } else if (symbol == "B") {
    prize <-  10
  } else if (symbol == "C") {
    prize <- 10
  } else if (symbol == "0") {
    prize <- 0
  }
}

prize



