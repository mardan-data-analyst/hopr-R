# If you know the name of function, you can search 
# for help using the syntax below

?sqrt
?log10
?sample

# Or
help(sqrt)
help(log10)
help(sample)

# If you don't remember the exact name of a function,
# you can do keyword search
??sam

# Exercise 3.2 (Roll a Pair of Dice)

unfair_roll <- function() {
  die <- 1:6
  dice  <- sample(die, size = 2, replace = TRUE,
                  prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}

unfair_rolls <-replicate(10000, unfair_roll())

qplot(unfair_rolls, binwidth = 1)


data6 <- data.frame(unfair_rolls)
ggplot(data5, aes(x = unfair_rolls)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histogram", x = "X-axis", y = "Frequency")
  

