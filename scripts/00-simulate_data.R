#### Preamble ####
# Purpose: Simulates aggregate count of persons who have been arrested and charged. 
#The data is aggregated by neighbourhood, sex, age, crime category, and crime subtype.
# Author: Sirui Tan
# Date: 19 January 2024 
# Contact: sirui.tan@utoronto.ca 
# License: MIT
# Pre-requisites: Know where to get opendatatoronto data.
# Any other information needed? No


#### Workspace setup ####

# Install the required packages 'tidyverse' and 'janitor'
install.packages("tidyverse")
install.packages("janitor")

# Load the installed packages
library(tidyverse)
library(janitor)

#### Simulate data ####

# Set a seed for reproducibility
set.seed(853)

# Create a tibble named 'simulated_aggregate_data'
simulated_aggregate_data <- tibble(
  # Simulate a random sample of sex ('female' or 'male')
  sex = sample(
    x = c("female", "male"),
    size = 200,
    replace = TRUE
  ),
  
  # Simulate a random sample of years from 2014 to 2022
  year = sample(
    x = 2014:2022,
    size = 200,
    replace = TRUE
  ),
  
  # Simulate a random sample of age categories
  age = sample(
    x = c("<18", "18 to 24", "25 to 34", "35 to 44", "45 to 54", "55 to 64", ">64"),
    size = 200,
    replace = TRUE
  ),
  
  # Simulate a random sample of crime categories
  crime_category = sample(
    x = c("Crimes Against the Person", "Crimes Against Property",
          "Criminal Code Traffic", "Other Criminal Code Violations"),
    size = 200,
    replace = TRUE
  ),
  # Simulate a random sample of neighbourhoods, since there are 159 
   #neighbourhoods so use unique number to replace it.
  neighbourhood= runif(n = 200, min = 1, max = 160)|> floor() 
)

# Display the first few rows of the simulated data to check
head(simulated_aggregate_data)



