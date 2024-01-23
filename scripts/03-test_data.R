#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
install.packages("tidyverse")
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####
  clean_data <-
  read_csv(
    file = here::here(
      "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
  sex_check <- clean_data$sex |> unique()|>
    length() == 2
  
  # Check the minimum year
  min_year_check <- min(clean_data$arrest_year) == 2014
  
  # Check the maximum year
  max_year_check <- max(clean_data$arrest_year) == 2022
  
  # Print the results
  cat("Unique sex values check:", sex_check, "\n")
  cat("Minimum year check:", min_year_check, "\n")
  cat("Maximum year check:", max_year_check, "\n")
 
