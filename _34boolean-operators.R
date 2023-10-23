# Deck of cards

deck <- read.csv(file = "cards.csv", header = TRUE)
deck2 <- deck

# Shuffle function
shuffle <- function(data.frame){
  random <- sample(1:52, size = 52)
  data.frame <- data.frame[random, ]
}

deck3 <- shuffle(deck)
deck4 <- deck
deck4$value <- 0
deck4$value[deck4$suit == "hearts"] <- 1
deck5 <- deck

# Boolean operators

# & - Are both cond1 and cond2 true?
4 < 5 & 4 == 4

# | - Is one or more of cond1 and cond2 true?
4 < 5 | 4 > 5

# xor() - Is exactly one of cond1 and cond2 true?
xor(4 < 5, 4 > 5)

# ! - Is cond1 false? (e.g., ! flips the results of a logical test) 
!4 < 5

# any() - Are any of the conditions true?
any(4 < 5, 4 > 5)

# all() - Are all of the conditions true?
all(4 < 5, 4 > 5)



a <- c(1, 2, 3)
b <- c(1, 2, 3)
c <- c(1, 2, 4)

a == b
b == c
a == b & b == c

# Locating queen of spades in deck4
deck4
queenOfSpades <-deck4$face == "queen" & deck4$suit == "spades"

deck4[queenOfSpades, ]
deck4$value[queenOfSpades]
deck4$value[queenOfSpades] <- 13
deck4[queenOfSpades, ]
deck4


# Exercise 7.3 (Practice with Tests)

# My solution
w <- c(-1, 0, 1)
x <- c(5, 15)
y <- "February"
z <- c("Monday", "Tuesday", "Friday")

# Is w positive?
w > 0

# Is x greater than 10 and less than 20?
x > 10 & x < 20

# Is object y the word February?
y == "February"

# Is every value in z a day of the week?
z %in% c("Monday", "Tuesday", "Wednesday", 
       "Thursday", "Friday", "Saturday", "Sunday")

# Book solution
w > 0
10 < x & x < 20
y == "February"
all(z %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", 
             "Saturday", "Sunday"))


# Blackjack game
deck5
head(deck5, 13)

facecard <- deck5$face %in% c("king", "queen", "jack")
deck5[facecard, ]

deck5$value[facecard] <- 10

head(deck5, 13)


