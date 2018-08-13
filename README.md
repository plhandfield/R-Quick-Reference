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

# You can get help for a command
help(ls)        # Help for the "ls" function

# Remove variable a
rm(a)
```

## Packages
```r
.libPaths()                         # Show package installation folder
library()                           # Show all available packages
search()                            # Show all installed packages
install.packages("Package Name")    # Install a package
```

## Variables
```r
# We can put dot in a variable name
var.1 = 1

# We can assigne variable in different ways
v = 1
v <- 1
v <<- 1
1 -> v
1 ->> v

# Variable types
v <- TRUE     # Booleans
v <- FALSE
v <- 4.23     # Numeric
v <- 2L       # Integer (Add "L")
v <- "hey"    Character

# R variables are case sensitive
a = "bob"
A = "carl"
print(a)        # Return bob
print(A)        # Return carl

# You can show the type of variable
print(class(v))

# There's shorthand for boolean
T       # True
F       # False
T & T   # Return true
```

## Vector
```r

# In R, the most simple type of variable are vector (same as "variable")
v <- TRUE

# All element should be same type
v <- c('bob', 'carl', 'ben')

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

# Return element that matches
a = c("Bob", "Carl", "Ben")
grep("^b", a, ignore.case=T)            # Return the index of matching elements (Bob and Ben)

# Other operations
v = 1:10                                # Quick assign of a vector. Same as c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
seq(5, 9, by = 0.4)                     # Using a sequence
"bob" %in% c("bob", "carl")             # Check if an element is in a vector
c("bob", "carl")[1]                     # Access elements by index (starts at 1). Return "bob"
sort(c(2, 3, 1))                        # Sorting a vector ascending
sort(c(2, 3, 1), decreasing = TRUE)     # Sorting a vector descending
```

## List
```r

# A List is a collection that can contain different kind of data (and functions)
v <- list(c("bob", "carl"), 23L, 23.4, sin)

v = list(id=1, name="bob")      # Naming list elements
v$name                          # Get one element by name
v[3] = 100                      # Add an unamed element at the end
```

## Matrix
```r

# A matrix is a 2D only collection. All data should be of the same type (or they will all be caster to a base type (likely string))
m <- matrix(c("bob", 200, 1343, "carl", 201, 823), nrow=2, ncol=3, byrow=TRUE)

#      [,1]   [,2]  [,3]  
# [1,] "bob"  "200" "1343"
# [2,] "carl" "201" "823"


# Combine vectors into a matrix
city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)
addresses <- cbind(city,state,zipcode)                  # Combine everything
```

# Factor
```r
# Factors stores a vector with unique values. It is case sensitive.
# They are most used in categorical variables.
f <- factor(c("bob", "BOB", "carl", "carl"))

# [1] bob  BOB  carl carl
# Levels: bob BOB carl
```

# Data Frames
```r
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

# Dataframes info
names(data)             # Get the columns name
str(data)               # Show stucture of data frame  (column types)
levels(data)            # Show the levels (dinstinct data (factors)) of a column
View(data)              # Popup the viewer
table(data$dept)        # Show frequencies for the column dept.

# Querying a dataframe
is.data.frame(df)                               # Chech if a variable is a data frame
ncol()                                          # Number of columns
nrow()                                          # Number of rows
max(data$salary)                                # Max value for the column salary
min(data$salary)                                # Min value for the column salary
max(as.Date(data$start_date))                   # We need to cast date to use some functions
subset(data, dept == "IT")                      # Return a dataframe with all the IT employee
subset(data, salary > 600 & dept == "IT")       # Employee earning more than 600 and in the IT dept
data[data$salary>600,]                          # We can also query without subset(), note the trailing ",")
data[data$salary>600, c("id", "name")]          # SELECT id, name FROM data WHERE salary > 600
head(data)                                      # Show the first couple rows of data
head(data, n=10)                                # Show the first 10 rows
tail(data)                                      # Show the last couple rows
data[c("id", "name")]                           # Select column "id" and "name" from the dataframe named "data"
data[4:6, c("id", "name")]                      # Show row [4, 6]

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
## Conditional
```r
score = 90
if(score > 90)
{
    print("Perfect")
}else if(score > 60)
{
    print("Good")

}else 
{
    print("bad")
}
```

## While
```r
i = 0
while(i < 3) {
    print(i)
    i = i + 1
}
```

## For
```r
v <- LETTERS[1:4]
for ( i in v) {
   print(i)
}
```

## Loop
```r
i = 0
repeat {   
    if(i > 3){
        break
    }
    print(i)

    i = i + 1
}
```

## Function
```r
# The last line is the function return value
add2 <- function(a) {
   a + 2
}

add2(10)    # Call the function

# Default parameters
add2 <- function(a = 10) {
   a + 2
}
```

## String
```r
a = "bob"                                   # Using double quotes
a = 'bob'                                   # Using single quotes
paste("hello", "bob")                       # Concatenate string
paste("hello", "bob", sep=",")              # Concatenate using separator
format(12.4534596, digits=4)                # Format int. Res: "12.45"
format("bob", width=15)                     # Pad the string with spaces for 15 chars total.
format("bob", width=15, justify="right")    # Pad the string with spaces for 15 chars total and align to the right
nchar("bob")                                # Nb of characters. 3 here.
toupper("BoB")                              # Uppercase
tolower("BoB")                              # Lowercase
substring("bob", 2, 3)                      # Substring for 2nd char to 3rd char. NOTE start à 1 and NOT 0.
```
## Environement
getwd()                                     # Return the current working directory
setwd("C:/Users/bob/R Turotial")            # Set the working directory. Note the FORWARD SLASH.
history()                                   # List of executed command in the environement
ls()                                        # List the variables in the environement

## Read CSV
read.csv("input.csv")                               # Read a csv in the workspace
write.csv(data, "output.csv")                       # Write a csv in the workspace. This will add row numbers.
write.csv(data, "output.csv", row.names = FALSE)    # Save csv without row number
