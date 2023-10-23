# Data frame

deck <- read.csv(file = "cards.csv", header = TRUE)
deck$value

mean(deck$value)
median(deck$value)

# List
lst <- list(numbers = c(1, 2), logical = TRUE,
            strings = c("a", "b", "c"))
lst

# The result is a smaller list with one element
# That element is the vector c(1, 2)
lst[1]

# sum(lst[1])
# Error in sum(lst[1]) : invalid 'type' (list) of argument


lst$numbers
sum(lst$numbers)

lst[[1]]
sum(lst[[1]])


# Subset returned as a list
lst["numbers"]
lst[1]

# Subset returned as a vector
lst[["numbers"]]
lst[[1]]
lst$numbers



