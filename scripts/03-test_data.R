#### Preamble ####
# Purpose: Tests the real data
# Author: Sirui Tan
# Date: 22 Janauary 2024 
# Contact: sirui.tan@utoronto.ca 
# License: MIT
# Pre-requisites: N/A
# Any other information needed? N/A


#### Workspace setup ####
install.packages("tidyverse")
library(tidyverse)


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

age_cohort_check <-clean_data$age_cohort |> unique()|>length() == 7
neighbourhood_check<-clean_data$neighbourhood |> unique()|>length() == 159

# Print the results
cat("Unique sex values check:", sex_check, "\n")
cat("Minimum year check:", min_year_check, "\n")
cat("Maximum year check:", max_year_check, "\n")