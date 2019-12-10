# R packages
library(ggplot2movies)
library(tidyverse)


#Movie query: input = movie title, output = year

query_year <- function(data, metric = title, value = year) {
  metric <- enquo(metric)
  value <- enquo(value)
  data %>% 
    filter(title == !!metric) -> temp
  return(temp$year)
}

query_year(movies,"Matrix, The")

