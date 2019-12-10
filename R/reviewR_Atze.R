# R packages
library(ggplot2movies)
library(tidyverse)
library(ggrepel)

#Movie query: input = movie title, output = year

query_year <- function(data, metric = title, value = year) {
  metric <- enquo(metric)
  value <- enquo(value)
  data %>% 
    filter(title == !!metric) -> temp
  return(temp$year)
}

query_year(movies,"Matrix, The")
query_year(movies, "Gone with the Wind")

#Plot Movie:
query <- "Gone with the Wind"
queryYear <- query_year(movies, query) #function from 1st step

movies %>% 
  filter(year == queryYear) %>% 
  ggplot(aes(length, rating)) +
  geom_point(alpha = 0.4) +
  labs(title = queryYear) +
  geom_point(data = movies[movies$title == query,],
             color = "red") +
  geom_label_repel(aes(label = query),
                   data = movies[movies$title == query,],
                   box.padding   = 0.5,
                   label.padding = 0.5)

# Calculate percentile:
