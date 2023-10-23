# installing packages

## The easiest way to install an R package
install.packages("package-1")

## if no packages is found:
## A version of this package for your version of R might be available elsewhere,  see the ideas at
## https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages

## install multiple packages at once
install.packages(c("package-1", "package-2", "package-3"))

## Versions of these packages for your version of R might be available elsewhere, see the ideas at
## https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages



# loading packages
libary(package-1)

# to see which packages you currently have in your R library
library()

# The devtools R package makes it easy to install packages from locations other than 
# the CRAN website. devtools provides functions like:
# install_github, install_gitorious, install_bitbucket, and install_url


# uninstall packages
remove.packages("package-1")


