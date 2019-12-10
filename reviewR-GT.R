#CHallenge2
library(ggplot2movies)
library(ggrepel)

str(movies)
glimpse(movies)


#Challenge 2

query <- "Gone with the Wind"
queryYear <- 1939

movies %>% 
  filter(year == queryYear) %>% 
  ggplot(aes(length, rating)) +
  geom_point(alpha = 0.4) +
  labs(title = queryYear) +
  geom_point(data = movies[movies$title == query,],
             color = "red") +
  geom_text_repel(aes(label=query), data = movies[movies$title == query,], box.padding=0.5, point.padding=0.5)

#percentile
example - 
  xx<-sample(1:200,200)
myFunc<- ecdt(xx)
myFunc(150)*100