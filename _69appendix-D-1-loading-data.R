# data sets in base R

help(package = "datasets")

iris

# working directory
getwd()
# "/home/mardan/Desktop/Hands-On Programming with R"

# set working directory
setwd("/home/mardan/Desktop/Hands-On Programming with R")


# read.table() function
# use sep to tell read.table what character your file uses to separate data entries.
# use header to tell read.table 
# whether the first line of the file contains variable names instead of values.
# If you know that your data uses a certain symbol to represent missing entries, 
# you can tell read.table (and the preceding functions) 
# what the symbol is with the na.strings argument.
# read.table will convert all instances of the missing information symbol to NA, 
# which is R’s missing information symbol
poker <- read.table("poker.csv", sep = ",", header = TRUE, na.string = ".")
rm(poker)

# use skip to tell R to skip a specific number of lines 
# before it starts reading in values from the file.
# you can read just the six lines that you want (five rows plus a header)
poker <- read.table("poker.csv", sep = ",", header = TRUE, na.string = ".", skip = 3, nrow = 5)
poker
rm(poker)

# when R comes across character strings (e.g., letters and words) it begins to act strangely. 
# R wants to convert every character string into a factor.
poker <- read.table("poker.csv", sep = ",", header = TRUE, skip = 2, stringsAsFactors = FALSE)

# If you will be loading more than one data file, 
# you can change the default factoring behavior at the global level
options(stringsAsFactors = FALSE)


# read.csv() function
poker <- read.csv("poker.csv", skip = 2)


# read.fwf() function to read fixed-width files
# poker <- read.fwf("poker.fwf", widths = c(10, 7, 6), skip = 2, header = TRUE)

# html links
poker <- read.csv("https://gist.githubusercontent.com/garrettgman/9629323/raw/ee5dfc039fd581cb467cc69c226ea2524913c3d8/deck.csv")


