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

# Factors stores a vector with unique values. It is case sensitive
f <- factor(c("bob", "BOB", "carl", "carl"))

# Returns
# [1] bob  BOB  carl carl
# Levels: bob BOB carl

```

## Arrays
```r
# Array is a matrix with n dimensions
# From https://www.safaribooksonline.com/library/view/learning-r/9781449357160/ch04.html
(three_d_array <- array(
  1:24,
  dim = c(4, 3, 2),
  dimnames = list(
    c("one", "two", "three", "four"),
    c("ein", "zwei", "drei"),
    c("un", "deux")
  )
))

## , , un
##
##       ein zwei drei
## one     1    5    9
## two     2    6   10
## three   3    7   11
## four    4    8   12
##
## , , deux
##
##       ein zwei drei
## one    13   17   21
## two    14   18   22
## three  15   19   23
## four   16   20   24

# 1:24 is generation values from 1 to 24
# dim = c(4, 3, 2) declares the dimensions size 
#   4 is (one, two, three, four)
#   3 is (ein, zwei, drei)
#   2 is (un, deux), the two "table"
```
