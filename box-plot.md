# Boxplot
[From Tutorial Point](https://www.tutorialspoint.com/r/r_boxplots.htm)

```r
# Get data about cars (number of cylinders and gas consumpion (miles))
input = mtcars[,c('mpg','cyl')]

# Draw the boxplot
boxplot(mpg ~ cyl, 
        data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data")
```

[How a boxplot works?](https://www.wellbeingatschool.org.nz/information-sheet/understanding-and-interpreting-box-plots)