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
  



police_clean_data <-
  police_clean_data|>
  mutate(
    NEIGHBOURHOOD_158= str_replace(NEIGHBOURHOOD_158, "\\s*\\(\\d+\\)$", ""),
  ) 
  
cleaned_data <-
  police_clean_data |>
  janitor::clean_names() |>
  select("arrest_year", "sex",age_cohort,category,neighbourhood_158)|>
  rename(neighbourhood=neighbourhood_158)|> 
 filter(sex %in% c("Male", "Female"),
         category%in% c ("Controlled Drugs and Substances Act","Crimes Against Property",
                         "Crimes Against the Person","Criminal Code Traffic","Other Criminal Code Violations"))
 head(cleaned_data)

write_csv(
  x = cleaned_data,
  file = "outputs/data/clean_data.csv"
)
analysis_2022_category_data <-
  read_csv(
    "outputs/data/clean_data.csv",
    show_col_types = FALSE
  )


analysis_2022_category_data <-
  analysis_2022_category_data |>
  filter(arrest_year == 2022)



head(analysis_2022_category_data)
write_csv(
  x = analysis_2022_category_data,
  file = "outputs/data/analysis_2022_category_data.csv")

year_2022_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2022_data <-
  year_2022_data |>
  filter(arrest_year == 2022) |> count(age_cohort)
year_2022_data$year <- c("2022")  
  
head(year_2022_data)

year_2021_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2021_data <-
  year_2021_data |>
  filter(arrest_year == 2021) |> count(age_cohort)
year_2021_data$year <- c("2021")  

head(year_2021_data)

year_2020_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2020_data <-
  year_2020_data |>
  filter(arrest_year == 2020) |> count(age_cohort)
year_2020_data$year <- c("2020")  

head(year_2020_data)

year_2019_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2019_data <-
  year_2019_data |>
  filter(arrest_year == 2019) |> count(age_cohort)
year_2019_data$year <- c("2019")  

head(year_2019_data)

year_2018_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2018_data <-
  year_2018_data |>
  filter(arrest_year == 2018) |> count(age_cohort)
year_2018_data$year <- c("2018")  

head(year_2018_data)

year_2017_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2017_data <-
  year_2017_data |>
  filter(arrest_year == 2017) |> count(age_cohort)
year_2017_data$year <- c("2017")  

head(year_2017_data)

year_2016_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2016_data <-
  year_2016_data |>
  filter(arrest_year == 2016) |> count(age_cohort)
year_2016_data$year <- c("2016")  

head(year_2016_data)

year_2015_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2015_data <-
  year_2015_data |>
  filter(arrest_year == 2015) |> count(age_cohort)
year_2015_data$year <- c("2015")  

head(year_2015_data)

year_2014_data <-
  read_csv(file = here::here(
    "outputs/data/clean_data.csv"),
    show_col_types = FALSE
  )
year_2014_data <-
  year_2014_data |>
  filter(arrest_year == 2014,
         age_cohort %in% c("18 to 24", "25 to 34","35 to 44","45 to 54",
                      "55 to 64","65+","<18")) |> count(age_cohort)
year_2014_data$year <- c("2014")  

head(year_2014_data)

combinde_data<-rbind(year_2022_data,year_2021_data,year_2020_data,year_2019_data,
                     year_2018_data,year_2017_data,year_2016_data,year_2015_data,
                     year_2014_data)
head(combinde_data)
write_csv(
  x = combinde_data,
  file = "outputs/data/combinde_data.csv"
)
