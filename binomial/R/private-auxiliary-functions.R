# 1.2) Private Auxiliary Functions

# Title Auxillary Mean function
# Description: Compute the expected value of the binomial distribution
# Inputs
#   trials: Number of trials in the binomial distribution (numeric)
#   prob: Probability of success in the binomial distribution (numeric)
# Output
#   the expected value of binomial distribution
#examples
#aux_mean(10, 0.3)
aux_mean <- function(trials, prob){
  return(trials*prob)
}



# Title Auxillary variance function
# Description: Compute the variance of the binomial distribution
# Inputs
#   trials: Number of trials in the binomial distribution (numeric)
#   prob: Probability of success in the binomial distribution (numeric)
# Output
#   the variance of binomial distribution
#examples
#aux_variance(10, 0.3)
aux_variance <- function(trials, prob){
  return(trials*prob*(1-prob))
}




# Title Auxillary Mode function
# Description: Compute the mode of the binomial distribution
# Inputs
#   trials: Number of trials in the binomial distribution (numeric)
#   prob: Probability of success in the binomial distribution (numeric)
# Output
#   the mode of binomial distribution
#examples
#aux_mode(10, 0.3)
aux_mode <- function(trials, prob){
  return(as.integer(trials*prob+prob))
}




# Title Auxillary Skewness function
# Description: Compute the skewness of the binomial distribution
# Inputs
#   trials: Number of trials in the binomial distribution (numeric)
#   prob: Probability of success in the binomial distribution (numeric)
# Output
#   the skewness of binomial distribution
#examples
#aux_skewness(10, 0.3)
aux_skewness <- function(trials, prob){
  skewness = (1-2*prob)/sqrt(trials * prob * (1- prob))
  return(skewness)
}

# Title: Auxillary Kurtosis function
# Description: Compute the kurtosis of the binomial distribution
# Inputs
#   trials: Number of trials in the binomial distribution (numeric)
#   prob: Probability of success in the binomial distribution (numeric)
# Output
#   the kurtosis of binomial distribution
#examples
#aux_kurtosis(10, 0.3)
aux_kurtosis <- function(trials, prob){
  kurtosis= (1 - 6 * prob * (1-prob) )/(trials * prob * (1-prob))
  return(kurtosis)
}
