### Data vis with ggplot2 ###

## ----- Setup ----- ##

# Cleanup
rm(list = ls())

# Load library
library(tidyverse)

## ----- Example from slides ----- ##

# Data
dat_eco_clean <- read.csv('../examples/dat_eco_cleaned.csv')

# Plot

## ----- Scatterplot ----- ##

# Data
library(nycflights13)  # For the 'flights' data

alaska_flights <- 
  flights %>% 
  filter(carrier == "AS")

# Plot

## ----- Line graph ----- ##
# Data

# Plot

## ----- Boxplot ----- ##
# Data

# Plot

## ----- Histogram ----- ##
# Data

# Plot

## ----- Barplot ----- ##

# Data
# Create some 'raw' observations of insect abundances
insects <- tibble(
  order = c("Lepidoptera", "Lepidoptera", "Orthoptera", "Orthoptera", "Hymenoptera")
)

# Create some 'pre-counted' observations of insect abundances
insects_counted <- tibble(
  order = c("Lepidoptera", "Orthoptera", 'Hymenoptera'),
  count = c(2, 2, 1)
)

# Plot

## ----- Composing and saving plots ----- ##

library(patchwork)

plot_1 <- 
  
  
plot_2 <- 
  
# Combine horizontally
plot_1 + plot_2

# Save
ggsave('example_plot.png')

