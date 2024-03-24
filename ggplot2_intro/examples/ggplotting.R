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
plot_feet <- 
  ggplot(dat_eco_clean, aes(x = weight, y = hindfoot_length)) +
    geom_point()


plot_feet_2 <- 
  plot_feet + xlab('Something')

## ----- Scatterplot ----- ##

# Data
library(nycflights13)  # For the 'flights' data

alaska_flights <- 
  flights %>% 
  filter(carrier == "AS")

# Plot
ggplot(alaska_flights, aes(x = dep_delay, y = arr_delay)) +
  geom_jitter(width = 10, height = 10, alpha = 0.3) +
  stat_smooth(method = lm)

## ----- Line graph ----- ##
# Data
head(Loblolly)

# Plot
ggplot(Loblolly, aes(x = age, y = height)) +
       geom_line() +
       facet_wrap(~Seed)


## ----- Boxplot ----- ##
# Data
head(CO2)

# Plot
ggplot(CO2, aes(x = Treatment, y = uptake)) +
  geom_boxplot(width = 0.3) +
  geom_jitter(width = 0.1, alpha = 0.5) +
  ylab('Uptake (ppm)') +
  ylim(0, 50) +
  theme_classic()

## ----- Histogram ----- ##
# Data

# Plot
ggplot(CO2, aes(x = uptake)) +
  geom_histogram() +
  facet_wrap(~Treatment, nrow = 2) +
  theme_classic()


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
  ggplot(CO2, aes(x = uptake)) +
    geom_histogram() +
    facet_wrap(~Treatment, nrow = 2) +
    theme_classic()
  
  
plot_2 <- 
  ggplot(Loblolly, aes(x = age, y = height)) +
  geom_line() +
  facet_wrap(~Seed)
  
# Combine horizontally
(plot_1 + plot_2) /
  plot_1

# Save
ggsave('example_plot.png', height = 10, width = 20, units = 'in')






