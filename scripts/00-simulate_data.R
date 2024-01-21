#### Preamble ####
# Purpose: Simulates aggregate count of persons who have been arrested and charged. 
#The data is aggregated by neighbourhood, sex, age, crime category, and crime subtype.
# Author: Sirui Tan
# Date: 19 January 2024 
# Contact: sirui.tan@utoronto.ca 
# License: MIT
# Pre-requisites: Know where to get opendatatoronto data.
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
install.packages("tidyverse")
install.packages("janitor")
library(tidyverse)
library(janitor)



#### Simulate data ####
# [...ADD CODE HERE...]

#### Simulate data ####

set.seed(853)
simulated_aggregate_data <-
  tibble(
    sex  = sample(
      x = c("female", "male"),
      size = 200,
      replace = TRUE
      ),
    year = sample(
      x = 2014:2022,
      size = 200,
      replace = TRUE
    ),
    age =sample(
        x = c("<18", "18 to 24","25 to 34","35 to 44","45 to 54","55 to 64", ">64"),
        size = 200,
        replace = TRUE
      ),
    crime_category=sample(x= c("Crimes Against the Person","Crimes Against Property",
                               "Criminal Code Traffic","Other Criminal Code Violations"),
                          size = 200,
                          replace = TRUE
    )
  )

head(simulated_aggregate_data)


