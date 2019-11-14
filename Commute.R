library(Hmisc)
library(skimr)
library(tidyverse)

commute <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-11-05/commute.csv")

commute$state <- gsub("Massachusett$", "Massachusetts", commute$state)

commute$state <- gsub("Ca$", "California", commute$state)

commute$state <- gsub("District o~$", "District of Columbia", commute$state)

describe(commute)

filter(commute, is.na(state_abb))
