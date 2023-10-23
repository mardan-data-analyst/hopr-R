deck <- read.csv(file = "cards.csv", header = TRUE)
deck2 <- deck[1:52, ]
head(deck2)


deck3 <- deck[c(2, 1, 3:52), ]
head(deck3)

random <- sample(1:52, size = 52)
random

deck4 <- deck[random, ]
head(deck4)

# Deal function
deal <- function(cards) {
  cards[1, ]
}

deal(deck)


# Shuffle function
shuffle <- function(data.frame){
  random <- sample(1:52, size = 52)
  data.frame <- data.frame[random, ]
}

shuffle(deck)

# Dealing, Shuffling and Dealing again
deal(deck)

deck2 <- shuffle(deck)

deal(deck2)


