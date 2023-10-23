# Expected values
die <- c(1, 2, 3, 4, 5, 6)

EXPECTED.VALUE.DIE <- 1*1/6 + 2*1/6 + 3*1/6 + 4*1/6 + 5*1/6 + 6*1/6 
EXPECTED.VALUE.DIE

# expected value will equal the average if every outcome has the same chance of occurring.
EXPECTED.VALUE.DIE == mean(die)


# Expected values for weighted dice
die <- 1:6
dice <- sample(die, size = 2, replace = TRUE,
                  prob = c(1/8,1/8,1/8,1/8,1/8,3/8))

EXPECTED.VALUE.DIE.WEIGHTED <- 1*1/8 + 2*1/8 + 3*1/8 + 4*1/8 + 5*1/8 + 6*3/8
EXPECTED.VALUE.DIE.WEIGHTED

# expected value of a loaded die does not equal the average value of its outcomes
EXPECTED.VALUE.DIE.WEIGHTED == mean(die)


