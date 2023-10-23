# Faster for loop
system.time({
  output <- rep(NA, 1000000)
  for (i in 1:1000000) {
    output[i]  <- i + 1
  }
}
)

output

# Remove the object for the second loop
rm(output)

# Slow for loop
system.time({
  output <- NA
  for (i in 1:1000000) {
    output[i] <- i + 1
  }
})


