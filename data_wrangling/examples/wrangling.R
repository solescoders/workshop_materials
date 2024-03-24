### Wrangling with the tidyverse ###

## ----- Setup ----- ##

# Cleanup
rm(list = ls())

# Load library
library(tidyverse)

## ----- Load data ----- ##

## mammal_sleep: What predicts the duration of sleep in mammals?

# This dataset includes data for 39 species of mammals distributed over 13 orders. 
# The data were used for analysing the relationship between constitutional and 
# ecological factors and sleeping in mammals. Two qualitatively different sleep 
# variables (dreaming and non-dreaming) were recorded. Constitutional variables 
# such as life span, body weight, brain weight and gestation time were evaluated. 
# Ecological variables such as severity of predation, safety of sleeping place 
# and overall danger were inferred from field observations in the literature. 
# It contains the following variables:
  # - species: species of mammals
  # - body_wt: total body weight of the mammal (in kg)
  # - brain_wt: brain weight of the mammal (in g)
  # - non_dreaming: number of hours of non-dreaming sleep per 24 hour period
  # - dreaming: number of hours of dreaming sleep per 24 hour period
  # - total_sleep: total number of hours of sleep per 24 hour period
  # - life_span: life span (in years)
  # - gestation: gestation time (in days)
  # - predation: an index of how likely the mammal is to be preyed upon. 
    # 1 = least likely to be preyed upon. 5 = most likely to be preyed upon.
  # - exposure: an index of the how exposed the mammal is during sleep. 
    # 1 = least exposed (e.g., sleeps in a well-protected den). 5 = most exposed.
  # - danger: an index of how much danger the mammal faces from other animals. 
    # This index is based upon Predation and Exposure. 1 = least danger from other animals. 
    # 5 = most danger from other animals.

# Data
dat_sleep <- read_csv('../examples/mammal_sleep.csv')

## ----- Wrangling exercises ----- ##

## (1) Using the built-in cars dataset, convert the following statements to piped expressions: 

# a. str(mtcars)

# b. max(dim(subset(mtcars, cyl == 6)))

# c. nrow(filter(mtcars, cyl == 4))


## (2) Turning to the mammal sleep data, give the following a go:

# a. Using pipes, filter the data to include animals with a body weight less 
# than or equal to 500 kg. How many records remain?

# b. Extend upon (1) to also remove the gestation variable, while keeping all others. 
# How many variable are in the dataset?

# c. Starting fresh, filter the data to include only those animals with a brain 
# weight between 10 and 50 g and which do not have any missing values (NAs) for life_span. 
# There are multiple ways to achieve both, but have a look at the between() and drop_na() functions as a hint.


## (3) In a single statement, create a new data.frame called mammal_subset from 
# the mammal_sleep data that meets the following criteria:

# - Contains only complete cases (no rows containing NA’s)
# - Excludes the predation, exposure, and danger variables
# - Only includes records with gestation durations greater than 12.5 weeks d. 
# - Contains records of body_wt in grams, and gestation in weeks


## (4) Using your new-found powers of summarisation, create piped commands to answer the following:

# a. How many animals were categorised at each level of danger?

# b. What are the average body and brain weights for each level of predation threat?

# c. What is the mean, minimum, and maximum proportion of time spent in ‘dreaming’ sleep

# d. Which is the animal with the largest brain weight at each level of danger? Arrange the output by
# descending level of danger.

# e. How many entries (rows) contain missing data (NA’s)? Again there are multiple solutions here, but
# take a look at the base function complete.cases() as one possible guide.

# f. What is the median and standard error lifespan in months for mammals that sleep less than 6 hours
# per day? Hint: n() gives the current group size of the data, which you’ll need for calculating the standard error.
