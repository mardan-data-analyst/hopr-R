# write.csv() file

deck <- read.csv("https://gist.githubusercontent.com/garrettgman/9629323/raw/ee5dfc039fd581cb467cc69c226ea2524913c3d8/deck.csv")
write.csv(deck, "deck-2.csv", row.names = FALSE)

# compressing files
write.csv(deck, file = bzfile("deck3.csv.bz2"), row.names = FALSE)

# gzfile -gnu zip (gzip)
# xzfile - xz compression

# reading compressed file
read.csv("deck3.csv.bz2")


# R files
## saving R files
### RData files - for saving multiple files
a <- 1
b <- 2
c <- 3
save(a, b, c, file = "stuff.RData")
save(deck, file = "poker.RData")
rm(a, b, c)
load("stuff.RData")
load("poker.RData")

### RDS files - for saving one object
saveRDS(a, file = "stuff.RDS")
saveRDS(deck, file = "poker.RDS")
a <- readRDS("stuff.RDS")

## reading R files
rm(poker)
poker <- readRDS("poker.RDS")


