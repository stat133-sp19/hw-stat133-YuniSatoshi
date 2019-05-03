


# 1.1) Private Checker Functions

# Function check_prob()
# Title check_prob()
# Description: to test if an input prob is a valid probability value (i.e. 0 ≤ p ≤ 1)
# Inputs
#   prob: probability  (numeric)
# Output
#   whether an input prob is a valid probability value (i.e. 0 ≤ p ≤ 1) or not.

check_prob <- function(prob){
  if (prob < 0){
    stop('invalid prob value')
  }
  if (prob > 1){
    stop('p has to be a number betwen 0 and 1')
  }
  else{
    return(TRUE)
  }
}


# Function check_trials()
# Title check_trials
# Description: to test if an input trials is a valid value for number of trials (i.e. n is a non-negative integer).
# Inputs
#   trials: The trials that we check whether is valid (numeric)
# Output
#   return whether an input trials is a valid value for number of trials (i.e. n is a non-negative integer).

check_trials <- function(trials){
  if (trials<0){
    stop('invalid trials value')
  }
  else{
    return(TRUE)
  }
}


# Function check_success()
# Title check_success()
# Description: to test if an input success is a valid value for number of successes (i.e. 0 ≤ k ≤ n).
# Inputs
#   success: The success value that we check whether is valid (numeric)
#   trials: The trials that we check whether is valid (numeric)
# Output
#   whether an input success is a valid value for number of successes (i.e. 0 ≤ k ≤ n).

check_success <- function(success,trials){
  if (success > trials){
    stop('success cannot be greater than trials')
  }
  if (success < 0){
    stop("invalid success value")
  }
  if (trials < 0){
    stop("invalid success value")
  }
  else{
    return(TRUE)
  }
}














































