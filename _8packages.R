# install.packages("tidyverse")
# remove.packages("ggplot2")
library(tidyverse)

# SCATTER PLOT

# qplot - without brackets prints details about the function

x1 <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2,0.4, 0.6,  0.8, 1)
x1

y1 <- x1^3
y1

qplot(x1, y1)
# `qplot()` was deprecated in ggplot2 3.4.0.

# Using ggplot function instead

## Create a data frame from the vectors
data1 <- data.frame(x1, y1)

ggplot(data1, aes(x = x1, y = y1)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "X-axis", y = "Y-axis")


# HISTOGRAM

x2 <- c(1, 2, 2, 2, 3, 3)
qplot(x2, binwidth = 1)

# Using ggplot function instead
data2 <- data.frame(x2)

ggplot(data2, aes(x = x2)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histogram", x = "X-axis", y = "Frequency")


x3 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)

# Using ggplot function instead
data3 <- data.frame(x3)
ggplot(data3, aes(x = x3)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histogram", x = "X-axis", y = "Frequency")

# Exercise - (Visualize a Histogram)
x4 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x4, binwidth = 1)


data4 <- data.frame(x4)
ggplot(data4, aes(x = x4)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histogram", x = "X-axis", y = "Frequency")


# replicate function
replicate(3, 1 + 1)

roll <- function() {
  die <- 1:6
  dice  <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

replicate(10, roll())

rolls <- replicate(10000, roll())

qplot(rolls, binwidth = 1)


data5 <- data.frame(rolls)
ggplot(data5, aes(x = rolls)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histogram", x = "X-axis", y = "Frequency")


