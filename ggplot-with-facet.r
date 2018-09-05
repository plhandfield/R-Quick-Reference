# Install ggplot2
install.packages("ggplot2")

# Load ggplot2
library(ggplot2)

# Data for the plot
data = data.frame(
    exp = c(10, 10, 12, 10, 10 ,12),
    sal = c(90, 87, 60, 80, 77, 50),
    loc = c("USA", "USA", "USA", "CAN", "CAN", "CAN")

)


# Basic scatter chart
ggplot(data, aes(x=exp, y=sal)) + geom_point()


# Basic scatter chart with facet
ggplot(data, aes(x=exp, y=sal)) + 
    geom_point() + 
    facet_grid(rows = vars(loc))