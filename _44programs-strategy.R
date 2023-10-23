# get_symbols function - initial 

get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}

get_symbols()

get_symbols()

get_symbols()


# Scoring slot-machine results is a complex task that will require a complex algorithm. 
# You can make this, and other coding tasks, easier by using a simple strategy:
# - Break complex tasks into simple subtasks.
# - Use concrete examples.
# - Describe your solutions in English, then convert them to R.


# SEQUENTIAL STEPS

# play function - initial

play <- function() {
  # step 1: generate symbols
  symbols <- get_symbols()
  
  # step 2: display the symbols
  print(symbols)
  
  # step 3: score the symbols
  # score function not working for now - it is not available
  # score(symbols)
}

# PARALLEL CASES

# Another way to divide a task is to spot groups of similar cases within the task. 
# Some tasks require different algorithms for different groups of input. 
# If you can identify those groups, you can work out their algorithms one at a time.

# For example, score will need to calculate the prize one way if symbols contains three of a kind 
# (In that case, score will need to match the common symbol to a prize). 
# score will need to calculate the prize a second way if the symbols are all bars 
# (In that case, score can just assign a prize of $5). 
# And, finally, score will need to calculate the prize in a third way if the symbols do not contain three of a kind or all bars
# (In that case, score must count the number of cherries present). 
# score will never use all three of these algorithms at once; 
# it will always choose just one algorithm to run based on the combination of symbols.


