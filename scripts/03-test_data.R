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

simulated_aggregate_data$sex |>
  unique() == c("male", "female")
simulated_aggregate_data$year |> min() == 2014
simulated_aggregate_data$year |> max() == 2022