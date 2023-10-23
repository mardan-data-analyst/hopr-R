# install.packages("pryr")
library(pryr)


parenvs(all = TRUE)



# Objects and functions
deck <- read.csv(file = "cards.csv", header = TRUE)
deck2 <- deck
deck3 <- shuffle(deck)
deck4 <- deck
deck5 <- deck


# deal function
deal <- function(cards) {
  cards[1, ]
}

# shuffle function
shuffle <- function(data.frame){
  random <- sample(1:52, size = 52)
  data.frame <- data.frame[random, ]
}


