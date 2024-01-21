#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
install.packages("janitor")
install.packages("tidyverse")
install.packages(c("dplyr", "stringr"))
library(dplyr)
library(stringr)

#### Clean data ####
# Assuming you are reading the data from a CSV file, adjust the file path accordingly

#### Read in the data ####
police_clean_data <-
read_csv(
  "inputs/data/police_data.csv",
  show_col_types = FALSE
)
  

head(police_clean_data)

police_clean_data <-
  police_clean_data|>
  mutate(
    NEIGHBOURHOOD_158= str_replace(NEIGHBOURHOOD_158, "\\s*\\(\\d+\\)$", ""),
  ) 
  
cleaned_data <-
  police_clean_data |>
  janitor::clean_names() |>
  select("arrest_year", "sex",age_cohort,category,neighbourhood_158)|>
  rename(neighbourhood=neighbourhood_158) 
 
head(cleaned_data)

write_csv(
  x = cleaned_data,
  file = "outputs/data/clean_data.csv"
)

