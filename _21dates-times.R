# Unclassing datetime
now <- Sys.time()
now

typeof(now)

unclass(now)
now

# Classing numbers as date time
mil <-  1000000
mil

class(mil) <- c("POSIXct", "POSIX")
mil


birthday <- c(as.POSIXct("1992-04-23 00:00:00 +04"))
typeof(birthday)
class(birthday)
unclass(birthday)


