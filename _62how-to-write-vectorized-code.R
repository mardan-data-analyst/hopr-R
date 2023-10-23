# create a vector with negative and positive values
vec <- c(1, -2, 3, -4, 5, -6, 7, -8, 9, -10)

# logical test to check for negative
vec < 0

# subset the vector with logical test
vec[vec < 0]

# multiply negative values by -1 to get absolute value of them
vec[vec < 0] * -1

# assign new values to the vector
vec <- vec[vec < 0] * -1


# Exercise 12.2 (Vectorize a Function)

change_symbols <- function(vec) {
  for (i in 1:length(vec)) {
    if (vec[i] == "DD") {
      vec[i] <- "joker"
    } else if (vec[i] == "C") {
      vec[i] <- "ace" 
    } else if (vec[i] == "7") {
      vec[i] <- "king"
    } else if (vec[i] == "B") {
      vec[i] <- "queen"
    } else if (vec[i] == "BB") {
      vec[i] <- "jack"
    } else if (vec[i] == "BBB") {
      vec[i] <- "ten"
    } else {
      vec[i] <- "nine"
      } 
  }
  vec
}

vec <- c("DD", "C", "7", "B", "BB", "BBB", "0")

change_symbols(vec)

many <- rep(vec, 1000000)

system.time(change_symbols(many))


# My solution

change_symbols2 <- function(vec) {
  vec[vec == "DD"] <- "joker"
  vec[vec == "C"] <- "ace"
  vec[vec == "7"] <- "king"
  vec[vec == "B"] <- "queen"
  vec[vec == "BB"] <- "jack"
  vec[vec == "BBB"] <- "ten"
  vec[vec == "0"] <- "nine"
  vec
}

change_symbols2(vec)
system.time(change_symbols2(many))


# Book solution

change_symbols3 <- function (vec) {
  vec[vec == "DD"] <- "joker"
  vec[vec == "C"] <- "ace"
  vec[vec == "7"] <- "king"
  vec[vec == "B"] <- "queen"
  vec[vec == "BB"] <- "jack"
  vec[vec == "BBB"] <- "ten"
  vec[vec == "0"] <- "nine"
  
  vec
}

system.time(change_vec3(many))

# Book solution with look up table
change_symbols4 <- function (vec) {
  tb <- c("DD" = "joker", "C" = "ace", "7" = "king", "B" = "queen", 
          "BB" = "jack", "BBB" = "ten", "0" = "nine")
  unname(tb[vec])
}

system.time(change_symbols4(many))


