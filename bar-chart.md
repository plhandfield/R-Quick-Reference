# Bar Chart

## Basic
```r
data = data.frame(months = c("jan", "feb", "mar", "apr"), 
                  Revenue = c(100, 300, 150, 200)
)

barplot(data$Revenue,
        names.arg = data$months,
        xlab="Month",
        ylab="Revenue",
        col="gray",
        main="Revenue by month",
        border="red"
)

```
