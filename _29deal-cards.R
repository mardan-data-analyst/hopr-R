deck <- read.csv(file = "cards.csv", header = TRUE)

deal <- function(cards) {
  cards[1, ]
}

deal(deck)


