# R Quick Reference

```r
# This is a comment

# ctrl + l to clear the console. Same as cat("\014")

# You can print in the console with
print("Hello Bob")
cat("Hello", "Bob", "\n")

# You can show all variables in the current session with 
ls()
print(ls(pattern="b"))      # Search with a pattern
print(ls(all.name = TRUE))  # Variables that starts with dot (.) are invisible. Use this to show them

# Remove variable a
rm(a)

# In R, the most simple type of variable are vector
v <- TRUE

# We can put dot in a variable name
var.1 = 1

# We can assigne variable in different ways
v = 1
v <- 1
v <<- 1
1 -> v
1 ->> v


# You can show the type of variable
print(class(v))


v <- TRUE     # Booleans
v <- FALSE
v <- 4.23     # Numeric
v <- 2L       # Integer (Add "L")
v <- "hey"    Character

# Vector with more than one elements of the same type
v <- c('bob', 'carl', 'ben')

# Quick assign of a vector
v = 1:10    # same as c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Chekc if an element is in a vector


# A List is a collection that can contains different kind of data (and functions)
v <- list(c("bob", "carl"), 23L, 23.4, sin)

# A matrix is a 2D only collection
m <- matrix(c("bob", 200, 1343, "carl", 201, 823), nrow=2, ncol=3, byrow=TRUE)

#      [,1]   [,2]  [,3]  
# [1,] "bob"  "200" "1343"
# [2,] "carl" "201" "823"

# Factors stores a vector with unique values. It is case sensitive.
# They are most used in categorical variables.
f <- factor(c("bob", "BOB", "carl", "carl"))

# [1] bob  BOB  carl carl
# Levels: bob BOB carl

# Data Frames is like a matrix, but each colums can have a data type.
df <- data.frame(
        id = c(10, 20, 30),
        name = c("bob", "carl", "ben"),
        balance = c(2000, 456, 20)
    )

#   id name balance
# 1 10  bob    2000
# 2 20 carl     456
# 3 30  ben      20

# Operations on vectors
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
res = (v+t)     # Add the 2 vectors
res = (v-t)     # Substract the 2 vectors
res = (v*t)     # Multiply the 2 vectors
res = (v/t)     # Divide the two vectors
res = (v%%t)    # Remainder
res = (v%/%t)   # Integer division
res = (v^t)     # Exponent

# Comparaisons (<, >, <=, >=, ==, !=)
c1 = c(1, 2, 3)
c2 = c(1, 2, 5)
c1 == c2        # TRUE TRUE FALSE

# Logical Operator (&, |, !) checks each elements.
c1 = c(2, TRUE, 0)
c2 = c(2, FALSE, 0)
c1 & c2         # TRUE FALSE FALSE

# Logical Operator for the first element only (&&, ||)
c1 = c(FALSE, 2)
c2 = c(TRUE, 4)
c1 && c2        # FALSE



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
