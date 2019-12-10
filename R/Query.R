getYear <- function(title) {
  title <- enquo(title)
  movies %>% 
    filter(title == !!title) -> temp
  return(temp$year)
}
  
  
  
  
  
  
  
#   function(data, metric = title) {
#   # Convert vor NSE
#   metric <- enquo(metric)
#   # Open data
#   movies %>%
#     # Filter for the title specified in function -> outputs vector of title
#     filter(title == !!metric) -> mYear
#     # Return ONLY year comlumn of vector
#     return(mYear$year)
# }