# Reference to the specific environment
as.environment("package:stats")
as.environment("package:grDevices")

globalenv()
baseenv()
emptyenv()


# environments parent environment

# without parent environment
parent.env(emptyenv())
# Error in parent.env(emptyenv()) : the empty environment has no parent

parent.env(globalenv())

# View the objects in an environment
ls(emptyenv())
ls(globalenv())


head(globalenv()$deck, 3)

# assign() function
assign("new", "Hello Global", envir = globalenv())
globalenv()$new


