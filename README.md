# R Quick Reference

```r
# This is a comment

# ctrl + l to clear the console. Same as cat("\014")

# In R, the most simple type of variable are vector
v <- TRUE

# You can show the type of variable
print(class(v))


v <- TRUE     # Booleans
v <- FALSE
v <- 4.23     # Numeric
v <- 2L       # Integer (Add "L")
v <- "hey"    Character

# Vector with more than one elements of the same type
v <- c('bob', 'carl', 'ben')

# A List is a collection that can contains different kind of data (and functions)
v <- list(c("bob", "carl"), 23L, 23.4, sin)

# A matrix is a 2D only collection
m <- matrix(c("bob", 200, 1343, "carl", 201, 823), nrow=2, ncol=3, byrow=TRUE)

# Returns
#      [,1]   [,2]  [,3]  
# [1,] "bob"  "200" "1343"
# [2,] "carl" "201" "823"





```
