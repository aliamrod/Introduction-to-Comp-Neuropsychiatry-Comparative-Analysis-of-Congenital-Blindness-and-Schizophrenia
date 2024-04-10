# Install and load the pwr package
install.packages("pwr")
library(pwr)

# COBRE dataset
n1_COBRE <- 89
n2_COBRE <- 68

# FBIRN dataset
n1_FBIRN <- 160
n2_FBIRN <- 151

# Effect size (Cohen's d)
d <- 0.5

# Significance level (alpha)
alpha <- 0.05

# Power (1 - beta)
power <- 0.80

# Calculate sample size for COBRE dataset
sample_size_COBRE <- pwr.t2n.test(n = NULL, n1 = n1_COBRE, n2 = n2_COBRE, d = d, sig.level = alpha, power = power)$n
cat("Sample size needed for COBRE dataset:", ceiling(sample_size_COBRE), "\n")

# Calculate sample size for FBIRN dataset
sample_size_FBIRN <- pwr.t2n.test(n = NULL, n1 = n1_FBIRN, n2 = n2_FBIRN, d = d, sig.level = alpha, power = power)$n
cat("Sample size needed for FBIRN dataset:", ceiling(sample_size_FBIRN))
