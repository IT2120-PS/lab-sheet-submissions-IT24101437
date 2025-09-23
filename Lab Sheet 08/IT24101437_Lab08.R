setwd("C:\\Users\\it24101437\\Desktop\\it24101437")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
head(data)

weights <- data$Weight

popmn <- mean(weights)
popvar <- var(weights)

cat("Population Mean: ", popmn)
cat("Population Variance: ", popvar)

samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(weights, 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s', i))
}

  samples
  n

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.var <- apply(samples, 2, var)

s.means
s.var

samplemean <- mean(s.means)
samplevar <- var(s.means)

cat("Mean of Sample Means: ", samplemean)
truevar <- popvar / 6
cat("Sample Variance of Sample Means: ", samplevar)
cat("True Variance (Population Variance / 6): ", truevar)
  