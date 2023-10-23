# Attributes

die <- c(1, 2, 3, 4, 5, 6)
attributes(die)

## names
names(die)

names(die) <- c("one", "two", "three", "four", "five", "six")
names(die)
attributes(die)
die

names(die) <- c("une", "dos", "tres", "quatro", "cinco", "seis")
names(die)
die

names(die) <- NULL
names(die)
die


## dim
#  2 × 3 matrix 
dim(die) <- c(2, 3)
die

#  3 × 2 matrix
dim(die) <- c(3, 2)
die

#  1 × 2 × 3 hypercube 
# (which has 1 row, 2 columns, and 3 “slices”)
dim(die) <- c(1, 2, 3)
die


