###load data

#state: april 2022



#load packages
library(readxl)
library(dplyr)
library(janitor)
library(here)
library(magrittr)


#load data, first sheet
data <- readxl::read_xlsx(path = here::here("data/Daten MA_David_20220411.xlsx"),
                          skip = 1) %>%  #range = "A3:E625"
  janitor::clean_names() %>% 
  dplyr::rename(ID = nr) 
