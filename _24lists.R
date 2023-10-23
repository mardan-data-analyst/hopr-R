list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

# Exercise 5.5 (Use a List to Make a Card)

card <- list("ace", "hearts", 1)
card

card[[1]][[1]]
typeof(card[[1]][[1]])
class(card[[1]][[1]])


# You can also give names to a list or vector 
# when you create one of these objects
# Use the same syntax as with data.frame:

l1 <- list(face = "ace", suit = "hearts", value = 1)
v1 <- c(face  = "ace", suit = "hearts", value = 1)

# The names will be stored in the object’s names attribute.

attributes(l1)
attributes(v1)

names(l1)
names(v1)



