# Objects and functions
deck <- read.csv(file = "cards.csv", header = TRUE)
DECK <- deck

# deal function
deal <- function(){
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv())
  card
}

# shuffle function
shuffle <- function() {
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv())
}


shuffle()

deal()

deal()


# All together
setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  
  SHUFFLE <- function() {
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
  
  list(deal = DEAL, shuffle = SHUFFLE)
  
}

# Create cards objects with a new function
cards <- setup(deck)

# Create new functions in the Global environment which are the  copies of the 
# functions inside setup function
deal <- cards$deal
shuffle <- cards$shuffle

# View the functions
deal
shuffle

# View the origin environments of the new functions
environment(deal)
environment(shuffle)


# This arrangement is called a closure. setup’s runtime environment “encloses” the deal and shuffle functions.
# Both deal and shuffle can work closely with the objects contained in the enclosing environment,
# but almost nothing else can. The enclosing environment is not on the search path for
# any other R function or environment.


# Modify objects in parent environment not in Global environment
deck <- read.csv(file = "cards.csv", header = TRUE)

setup2 <- function(deck) {
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

cards2 <- setup2(deck)
deal2 <- cards2$deal
shuffle2 <- cards2$shuffle

# Play the game
rm(deck)
shuffle2()
deal2()
deal2()

replicate(52, deal2())
shuffle2()


