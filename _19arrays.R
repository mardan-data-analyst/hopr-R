ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar

# Exercise 5.3 (Make a Matrix)

card <- c("ace", "king", "queen", "jack", "ten", 
          "spades", "spades", "spades", "spades", "spades")

# My solution
 card.mat <- matrix(card, ncol = 2)
 card.mat
 
# Book solution
# column by column
hand1 <- c("ace", "king", "queen", "jack", "ten",
           "spades", "spades", 
           "spades", "spades", 
           "spades")

matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)
hand1

# row by row 
hand2 <- c("ace", "spades", "king", "spades", "queen", "spades", "jack", 
           "spades", "ten", "spades")
matrix(hand2, nrow = 5, byrow = TRUE) 
matrix(hand2, ncol = 2, byrow = TRUE)


