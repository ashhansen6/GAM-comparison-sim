# Seed
set.seed(1456)

# Predictor Variables
x1 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x2 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x3 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x4 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x5 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x6 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x7 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x8 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x9 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))
x10 <- rnorm(1000, mean = rnorm(1, 50, 10), sd = rnorm(1, 10, 3))

# Predicted Variables

y1 <- x1 + x3 + x6 + x10 - x5 - x8
hist(y1)

y2 <- x2^2 + x5^2 + x6 + x7 - x9^2
hist(y2)

y3 <- x1^3 + x8^4 + x10^2 - x2^3 - x7
hist(y3)

y4 <- (log(x1 + x9) - sin(x8^3))/x2 + x1
hist(y4)

# Data Frame
df <- data.frame(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, y1, y2, y3, y4)
df <- df %>% mutate(id = row_number())

round(as.matrix(cor(df[1:10])), 4)

# Test and Training Sets
train <- sample_n(df, 800)
test <- anti_join(df, train, by = 'id')

glimpse(test)
glimpse(train)
