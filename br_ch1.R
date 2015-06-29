#
# See chapter 1 of Bayes Rule (James V Stone)
# https://github.com/DrJCampbell/bayes_rule_examples

# 1.1 Poxy Diseases

# define the probability
# of observing the symptoms
# given that a patient has a
# disease. This is the likelihood
# or little theta
p_spots_given_smallpox <- 0.9
p_spots_given_chickenpox <- 0.8

# define the probability of 
# having each disease. Also
# known as the prior probability
p_smallpox <- 0.000001 # actually 0!
p_chickenpox <- 0.1

# define the probability of having
# spots amongst the population
p_spots <- 0.081

# use Bayes' rule to find the 
# probability of having each 
# disease (smallpox or chickenpox)
# given that a patient has spots

p_smallpox_given_spots <- (
	(p_spots_given_smallpox * p_smallpox) / p_spots
	)
# [1] 1.111111e-05

p_chickenpox_given_spots <- (
	(p_spots_given_chickenpox * p_chickenpox) / p_spots
	)
# [1] 0.9876543



# Find the posterior odds
# or posterior ratio between
# two competing hypotheses

R_post <- p_chickenpox_given_spots / p_smallpox_given_spots

# apply Bayes' rule to numerator
# and denominator posteriors 



