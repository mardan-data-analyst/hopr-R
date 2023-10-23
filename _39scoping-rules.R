# R follows a special set of rules to look up objects. 
# These rules are known as R’s scoping rules, and you’ve already met a couple of them:
  
# 1. R looks for objects in the current active environment.

# 2. When you work at the command line, the active environment is the global environment.
# Hence, R looks up objects that you call at the command line in the global environment.

# 3. When R does not find an object in an environment, R looks in the environment’s parent environment, 
# then the parent of the parent, and so on, until R finds the object or reaches the empty environment.


