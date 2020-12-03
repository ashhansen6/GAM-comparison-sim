# Packages used:
library(tidyverse)

# Seed
set.seed(1456)

# Predictor Variables
x1 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x2 <- runif(1000, rnorm(1, 30, 4), rnorm(1, 55, 8))
x3 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x4 <- runif(1000, 30, 60)
x5 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x6 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x7 <- runif(1000, rnorm(1, 40, 10), rnorm(1, 77, 3))
x8 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x9 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x10 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))

# Predicted Variables

y1 <- x1 + x3 + x6 + x10 - x5 - x8
hist(y1)

y2 <- x1^2 + x5^2 + x6 - x9^2
hist(y2)

y3 <- ((3*(3*x1 + (x9 - 38))) - (x8 + x6)/x2 + x3/x7)*2*x10
hist(y3)

# Data Frame
df <- data.frame(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, y1, y2, y3)
df <- df %>% mutate(id = row_number())

round(as.matrix(cor(df[1:10])), 4)

# Test and Training Sets
train <- sample_n(df, 800)
test <- anti_join(df, train, by = 'id')

glimpse(test)
glimpse(train)
