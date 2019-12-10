#Inlcude Library
library(tidyverse)
library(ggplot2movies)
library(ggrepel)

glimpse(movies)



queryYear <- 1999
queryName <- "Matrix, The"

movies %>%
  filter(year == queryYear) %>% 
  ggplot(aes(length, rating)) +
  geom_point(alpha = 0.4) +
  labs(title = queryYear) +
  geom_point(data = movies[movies$title == queryName,],
             color = "red")+
#  geom_text_repel(aes(label = queryName),
#                  data = movies[movies$title == queryName,],
#                  box.padding   = 0.5, 
#                  point.padding = 0.5,)+
  geom_label_repel(aes(label = queryName),
                   data = movies[movies$title == queryName,],
                   box.padding   = 0.5,
                   label.padding = 0.5)

#ecdf() precentiles