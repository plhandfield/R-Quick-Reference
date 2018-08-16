# Create a scatter plot from 10000 random numbers between 1 and 100

# Random data
d = sample(1:100, 10000, replace=T)
data = data.frame(id=d, val=d)

# Agregate the results and count the number of occurences
results = aggregate(val ~ id, data, length)

# Plot the result
plot(x = results$id,
     y = results$val,
     xlim = c(0, 105),
     ylim = c(0, 200),
     xlab = "Random Number",
     ylab = "Frequencie",
     main = "Random Number vs Frequency"
)
