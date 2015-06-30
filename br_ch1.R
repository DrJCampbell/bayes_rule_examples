# ================================================== #
# See chapter 1 of Bayes Rule (James V Stone)
# https://github.com/DrJCampbell/bayes_rule_examples
# ================================================== #

# ----------------- #
# 1.1 Poxy Diseases
# ----------------- #

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

R_post1 <- p_chickenpox_given_spots / p_smallpox_given_spots

# apply Bayes' rule to numerator
# and denominator posteriors 

R_post2 <- (
	(p_spots_given_chickenpox * p_chickenpox) / p_spots
	) / (
	(p_spots_given_smallpox * p_smallpox) / p_spots
	)

# cancel out the marginal likelihood p_spots

R_post3 <- (p_spots_given_chickenpox / p_spots_given_smallpox) * (p_chickenpox / p_smallpox) 

# Rpost is the product of two ratios, the ratio of
# likelihoods which is also known as the Bayes factor
# and the ratio of priors

# Bayes factor (B) is less than 1 to favors
# smallpox
B <- (p_spots_given_chickenpox / p_spots_given_smallpox)

# but the ratio of priors is much greater than 1 and 
# so massively favors chickenpox
R_prior <- (p_chickenpox / p_smallpox)


# A ratio of posteriors greater than 3 or 1/3 is
# considered to represent as substantial difference
# in the probabilities of the two hypotheses
R_post4 <- B * R_prior


# ------------------ #
# 1.3 Flipping coins
# ------------------ #

# a coin with a bais of getting a head
# of 0.6

p_xhead_given_bias <- 0.6

p_xtail_given_bias <- 1 - p_xhead_given_bias
