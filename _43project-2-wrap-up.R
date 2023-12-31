deck <- read.csv(file = "cards.csv", header = TRUE)

setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = parent.env(environment()))
    card
  }
  
  SHUFFLE <- function() {
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = parent.env(environment()))
  }
  
  list(deal = DEAL, shuffle = SHUFFLE)
  
}

cards <- setup(deck)
deal <- cards$deal
shuffle <- cards$shuffle

# Play the game
rm(deck)
shuffle()

# Manual check of deals
deal()

# Shuffle to replay
shuffle()

# Play
deal()



# Test with 52 deals at once
replicate(52, deal())
shuffle()
deal()



