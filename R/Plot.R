plotMovie <- function(queryTitle, color = "green"){
  
  queryYear <- getYear(queryTitle)
  
  movies %>%
    filter(year == queryYear) %>% 
      ggplot(aes(length, rating)) +
      geom_point(alpha = 0.4)  +
      labs(title = queryTitle) +
      geom_point(data = movies[movies$title == queryTitle,],
             color = color) +
      geom_label_repel(aes(label = queryTitle),
                       data = movies[movies$title == queryTitle,],
                       box.padding   = 0.5,
                       label.padding = 0.5)
}