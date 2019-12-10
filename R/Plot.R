# Inlcude Library
library(tidyverse)
library(ggplot2movies)
library(ggrepel)

#Open Query Script to get Year from Name
source("Query.R")

plotMovie <- function(data){
  data %>%
    filter(year == mYear) %>% 
      ggplot(aes(length, rating)) +
      geom_point(alpha = 0.4) +
      labs(title = mYear) +
      geom_point(data = movies[movies$title == mName,],
             color = "red")+
  #  geom_text_repel(aes(label = queryName),
  #                  data = movies[movies$title == queryName,],
  #                  box.padding   = 0.5, 
  #                  point.padding = 0.5,)+
      geom_label_repel(aes(label = mName),
                       data = movies[movies$title == mName,],
                       box.padding   = 0.5,
                       label.padding = 0.5)
}
#Call function
plotMovie(movies, "Matrix, The")