# Inlcude Library
library(tidyverse)
library(ggplot2movies)

# Find Year of movie
# Define function
getYear <- function(data, metric = title) {
  # Convert vor NSE
  metric <- enquo(metric)
  # Open data
  movies %>%
    # Filter for the title specified in function -> outputs vector of title
    filter(title == !!metric) -> mYear
    # Return ONLY year comlumn of vector
    return(mYear$year)
}

#Call function
getYear(movies, "Matrix, The")
