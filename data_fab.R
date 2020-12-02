# Seed
set.seed(1456)

# Predictor Variables
x1 <- rnorm(1000, mean = rnorm(1, mean=54, sd=12), sd = rnorm(1, mean=4, sd=2))
hist(x1)

x2 <- rnorm(1000, 131, 16)
hist(x2)

x3 <- rgamma(1000, shape = rnorm(1, 5, 2), rate = rnorm(1, 15, 5))
hist(x3)

x4 <- rexp(1000, rate = 10)
hist(x4)

x5 <- runif(1000, min = 30, max = 50)
hist(x5)

x6 <- rchisq(1000, 15)
hist(x6)

x7 <- rpois(1000, 15)
hist(x7)

x8 <- rexp(1000, 2)
hist(x8)

x9 <- rlogis(1000, location = 60, scale = 2)
hist(x9)

x10 <- rgamma(1000, shape = 2, rate = 4)
hist(x10)

# Predicted Variables

y1 <- x1 + x3 + x6 + x10 - x5 - x8
hist(y1)

y2 <- x2^2 + x5^2 + x6 + x7 - x9^2
hist(y2)

y3 <- x1^3 + x8^4 + x10^2 - x2^3 - x7
hist(y3)

y4 <- (log(x1 + x9) - sin(x8^3))/x2 + x1
hist(y4)

df <- data.frame(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, y1, y2, y3, y4)

