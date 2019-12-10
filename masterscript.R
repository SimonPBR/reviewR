# Masterscript reviewR-Group

# Inlcude Library
library(tidyverse)
library(ggplot2movies)
library(ggrepel)



#List files in directory
#Open Query Script to get Year from Name
source("R/Query.R")
source("R/Plot.R")

getYear("Gone with the Wind")

#Call function
plotMovie("Gone with the Wind")
