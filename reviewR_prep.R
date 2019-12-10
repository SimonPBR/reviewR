# R packages
library(ggplot2movies)
library(tidyverse)


#Movie query: input = movie title, output = year

query_year <- function(data, metric = title, value = year) {
  metric <- enquo(metric)
  value <- enquo(value)
  data %>% 
    filter(title == !!metric)
}

query_year(movies,"Matrix, The")

query1 <- movies %>% 
  select(title, year)

queryyear <- query1 %>% 
  filter(title == "Matrix, The") %>% 
  pull(var = -1)