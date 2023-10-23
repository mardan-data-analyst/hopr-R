deck <- read.csv(file = "cards.csv", header = TRUE)
deck2 <- deck

# Shuffle function
shuffle <- function(data.frame){
  random <- sample(1:52, size = 52)
  data.frame <- data.frame[random, ]
}

deck3 <- shuffle(deck)
head(deck3)


vec <- c(1, 0, 1, 1, 2, 1, 0)
vec

vec[c(FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE)]

# Logical operators
# > - Is a greater than b?
4 > 4

# >= Is a greater than or equal to b?
4 >= 4

# < Is a less than b?
4 < 4

# <= Is a less than or equal to b?
4 < 4

# == Is a equal to b?
4 == 4

# != Is a not equal to b?
4 != 4

# %in% Is a in the group c(a, b, c)?
4 %in% c(1, 2, 3, 4)


1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)

# %in% in operator

1 %in% c(3, 4, 5)
c(1, 2) %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)
c(1, 2, 3, 4) %in% c(3, 4, 5)



# Exercise 7.1 (How many Aces?)

# My solution
# Extracting face column
faces <- deck2$face
faces

# Logical test to identify the ace values
faces == "ace"

# Total number of aces
sum(faces == "ace")


# Book solution
# Extracting face column
deck2$face

# Logical test to identify the ace values
deck2$face == "ace"

# Total number of aces
sum(deck2$face == "ace")


# Modifying the values of aces in deck3 data frame
deck3$face == "ace"

deck3$value[deck3$face == "ace"]
deck3$value[deck3$face == "ace"] <- 14
deck3$value[deck3$face == "ace"]

head(deck3, 25)


# Hearts game
deck4 <- deck
deck4$value <- 0
head(deck4, 13)


# Exercise 7.2 (Score the Deck for Hearts)

# My solution == Book solution
deck4$suit == "hearts"
deck4$value[deck4$suit == "hearts"]
deck4$value[deck4$suit == "hearts"] <- 1
deck4$value[deck4$suit == "hearts"]

# All of the queens
deck4[deck4$face == "queen", ]

# All of the spades
deck4[deck4$face == "spades", ]


