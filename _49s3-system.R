num <- 1000000000

# prevent scientific notation
options(scipen = 9999, digits = 2)
print(num)


class(num) <- c("POSIXct", "POSIXt")
print(num)


