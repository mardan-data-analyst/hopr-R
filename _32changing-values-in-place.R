deck <- read.csv(file = "cards.csv", header = TRUE)
deck2 <- deck


vec <- c(0, 0, 0, 0, 0, 0)

# Changing values
vec[1]
vec[1] <- 1000
vec


vec[c(1, 3, 5)] <- c(1, 1, 1)
vec

vec[c(1, 3, 5)] <- c(1, 1, 1)
vec

vec[4:6] <- vec[4:6] +1
vec

# Adding new values
vec[7] <- 0
vec


# Adding new column to a data  frame
head(deck2)
deck2$new <- 1:52
head(deck2)

# Removing columns
deck2$new <- NULL
head(deck2)

# Aces
deck2[c(13, 26, 39, 52), ]

# Values of the aces 
deck2[c(13, 26, 39, 52), 3]
deck2$value[c(13, 26, 39, 52)]

# Assigning new values
deck2$value[c(13, 26, 39, 52)] <- c(14, 14, 14, 14)
# or
deck2$value[c(13, 26, 39, 52)] <- 14
deck2[c(13, 26, 39, 52), 3]

head(deck2, 13)

# Shuffle function
shuffle <- function(data.frame){
  random <- sample(1:52, size = 52)
  data.frame <- data.frame[random, ]
}

deck3 <- shuffle(deck)
head(deck3)



