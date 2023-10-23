library(pryr)


# Explore R’s runtime environments
show_env <- function(){
  list(
    # runtime environment
    ran.in = environment(),
    # parent environment
    parent = parent.env(environment()),
    # objects created at runtime environment
    objects = ls.str(environment()))
}


show_env()
show_env()


# Origin environment
environment(show_env)

# The origin environment of parenvs is the pryr package
environment(parenvs)

# Runtime environment with objects in it
show_env2 <- function(){
  a <- 1
  b <- 2
  c <- 3
  list(
    # runtime environment
    ran.in = environment(),
    # parent environment
    parent = parent.env(environment()),
    # objects created at runtime environment
    objects = ls.str(environment()))
}

show_env2()


# User inputs and arguments
foo <- "take me to your runtime"

show_env3 <- function(x = foo){
  list(ran.in = environment(), 
       parent = parent.env(environment()), 
       objects = ls.str(environment()))
}

show_env3()

# deal function: Editing

# Exercise 8.1 (Will deal work?)
deck <- read.csv(file = "cards.csv", header = TRUE)

deal.exercise <- function() {
  deck[1, ]
}

deal.exercise()


DECK <- deck
deck <- deck[-1, ]
head(deck, 3)

# Not working deal function
deal.exercise2 <- function() {
  card <- deck[1, ]
  deck <- deck[-1, ]
  card
}


# Exercise 8.2 (Overwrite deck)
deck <- read.csv(file = "cards.csv", header = TRUE)

# Working deal function
deal.exercise3 <- function(){
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv())
  card
}

deal.exercise3()


# shuffle function: editing
shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random, ]
}

head(deck, 3)

# shuffled copy of the deck object
a <- shuffle(deck)

head(deck, 3)

head(a, 3)

# Exercise 8.3 (Rewrite shuffle)
deck <- read.csv(file = "cards.csv", header = TRUE)
DECK <- deck

shuffle.exercise <- function() {
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv())
}



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


