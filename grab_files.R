library(tidyverse)
library(rvest)

wiki_url <- read_html("https://en.wikipedia.org/wiki/UEFA_Euro_2020_squads")

raw_data <- wiki_url %>% 
  html_elements("td:nth-child(4)") %>% 
  html_text2() %>% 
  as_tibble()

write.csv(raw_data, "birthdates.csv")

