# debug() function
debug(sample)
isdebugged(sample)

undebug(sample)
isdebugged(sample)


# debugonce() function
debugonce(sample)
isdebugged(sample)


# trace() function
trace("sample", browser, at = 4)
# Error in fBody[[i]] : subscript out of bounds
trace("sample", browser, at = 2)

trace(print)

first <- function() second()
second <- function() third()
third <- function() fourth()
fourth <- function() fifth()
first


deck <- read.csv(file = "deck.csv", stringsAsFactors = FALSE)
head(deck)

# Revert a function to normal after calling trace on it
untrace(sample)
untrace(print)


# recover() function
fifth <- function() recover()

first()


# If you run the following code, R will automatically call recover() whenever an error occurs
options(error = recover)

# This behavior will last until you close your R session, or reverse the behavior by calling:
options(error = NULL)


