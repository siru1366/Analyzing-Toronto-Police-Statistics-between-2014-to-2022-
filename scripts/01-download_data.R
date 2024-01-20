#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


install.packages("opendatatoronto")
install.packages("knitr")
install.packages("tidyverse")
install.packages("readr")


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(knitr)
library(readr)




police_resources <- list_package_resources("police-annual-statistical-report-arrested-and-charged-persons")
str(police_resources)

police_data <- get_resource(police_resources[1, ])
str(police_data)

write_csv(
  x = police_data,
  file = "inputs/data/police_data.csv"
)


         
