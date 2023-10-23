deck <- read.csv(file = "cards.csv", header = TRUE)
deck5 <- deck

1 + NA
NA == 1


# na.rm
c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)


# is.na
# NA == NA
# c(1, 2, 3, NA) == NA

is.na(NA)

vec <- c(1, 2, 3, NA)
is.na(vec)

deck5$value[deck5$face == "ace"] <- NA
  head(deck5, 13)

  
