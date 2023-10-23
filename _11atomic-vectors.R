die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)
length(die)

five <- 5
is.vector(five)
length(five)

int1 <- 1L
text <- "ace"

int2 <- c(1L, 5L)
text <- c("ace", "hearts")

sum(int2)
# sum(text)
# Error in sum(text) : invalid 'type' 
# (character) of argument


