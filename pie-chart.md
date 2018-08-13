# Pie Chart Examples

## Basic
```r
# Pie values
x = c(200, 500, 124, 836)

# Pie titles
labels = c("oranges", "apples", "bannanas", "grapes")

# Draw the pie
pie(x, labels)
```

## Percentages
```r
# Pie values
x = c(200, 500, 124, 836)

# Percentages of all section (vector operation)
piepercent = round(100*x/sum(x), 1)

# Set of colors used for the pie
colors = c("#33ccff", "#ff99ff", "#ffff00", "#33cc33")

# Draw the graph
pie(x, 
    labels = piepercent, 
    main = "Fruit pie chart", 
    col = colors
)

# Draw the legend
legend("topright",                                      #  "bottom", "bottomleft", "left", "topleft", "top", ...
       c("oranges", "apples", "bannanas", "grapes"),    # Items
       cex = 0.8,                                       # Size of the legend
       fill = colors)


```
