# Negative value

num <- -2

if (num < 0) {
  num <- num * -1
}

num

# Positive value
num <- 4

if (num < 0) {
  num <- num * -1
}

num

# Multiple line if statement
num <- -1

if (num < 0) {
  print("num is negative.")
  print("Don't worry, I'll fix it.")
  num <- num * -1
  print("Now num is positive.")
}


# Exercise 9.1 (Quiz A) What will this return?

x <- 1

if (3 == 3) {
  x <- 2
}

x

# Exercise 9.2 (Quiz B) What will this return?

x <- 1

if (TRUE) {
  x <- 2
}

x

# Exercise 9.3 (Quiz C) What will this return?

x <- 1

if (x == 1) {
  x <- 2
  if (x == 1) {
    x <- 3
  }
}

x


