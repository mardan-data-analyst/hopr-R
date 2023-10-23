die <- 1:6

rolls <- expand.grid(die, die)
rolls

rolls4 <- expand.grid(die, die, die, die)
rolls4

# value of each roll
rolls$value <- rolls$Var1 + rolls$Var2
rolls


# Basic rule of probability: 
#  The probability that n independent, random events all occur is 
# equal to the product of the probabilities that each random event occurs.
# P(A&B&C&...) = P(A) * P(B) * P(C) * ...

P.1_1 <- 1/8 * 1/8
P.1_1

P.1_2 <- 1/8 * 1/8


# calculating probabilities for two dice
rm(rolls)

die <- 1:6
rolls <- expand.grid(die, die)
rolls

# value of each roll
rolls$value <- rolls$Var1 + rolls$Var2
rolls

# 1. Look up the probabilities of rolling the values in Var1

# create a look-up table
prob <- c("1" = 1/8, "2" = 1/8, "3" = 1/8, "4" = 1/8, "5" = 1/8, "6" = 3/8)
prob

rolls$Var1

# subset look-up table
prob[rolls$Var1]

# add new column to the rolls table
rolls$prob1 <- prob[rolls$Var1]
head(rolls, 3)

# 2. Look up table of probabilities of rolling the values in Var2
rolls$prob2 <- prob[rolls$Var2]
head(rolls, 3)

# 3. Calculate the probability of rolling each combination by multiplying prob1 by prob2
rolls$prob <- rolls$prob1 * rolls$prob2
head(rolls, 3)

expected.value <- sum(rolls$value * rolls$prob)
expected.value

