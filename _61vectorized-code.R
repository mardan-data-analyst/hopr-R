# abs function - for loop version

abs_loop <- function(vec) {
  for (i in 1:length(vec)) {
    if (vec[i] < 0) {
      vec[i] <- -vec[i]
    }
  }
    vec
}
  
# abs function - vectorized version
abs_sets <- function(vec) {
  negs <- vec < 0
  vec[negs] <- vec[negs] * -1
  vec
}

abs_sets(-1)

# abs_set is much faster than abs_loop because 
# it relies on operations that R does quickly: 
# logical tests, subsetting, and element-wise execution.

# Compare two versions of function
long <- rep(c(-1, 1), 5000000)

system.time(abs_loop(long))

system.time(abs_sets(long))

system.time(abs_loop(long)) / system.time(abs_sets(long))


# Exercise 12.1 (How fast is abs?

# My solution

# calculate elapse time for each and save the output
abs.loop <- system.time(abs_loop(long))
abs.sets <- system.time(abs_sets(long))
abs.base <- system.time(abs(long))

# calculate differences
base.vs.loop <- abs.base / abs.loop
base.vs.sets <- abs.base / abs.sets

base.vs.loop
base.vs.sets

# Book solution
system.time(abs(long))


