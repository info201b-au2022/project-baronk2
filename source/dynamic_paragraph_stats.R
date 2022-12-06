# dynamic_paragraph_stats.R

library("dplyr")

all_disease <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/main/data/00-all-causes.csv")



############



# hiv_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "HIV/AIDS") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # View(hiv_data)
# 
# # print(hiv_data)
# 
# Diarrhoeal_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Diarrhoeal diseases") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(Diarrhoeal_data)
# 
# measles_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Measles") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(measles_data)
# 
# Meningitis_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Meningitis/encephalitis") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(Meningitis_data)
# 
# malaria_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Malaria") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(malaria_data)
# 
# acute_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Acute lower respiratory infections") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # View(acute_data)
# 
# # print(acute_data)
#                         
# premature_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Prematurity") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(premature_data)
# 
# birth_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Birth asphyxia and birth trauma") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(birth_data)
# 
# sepsis_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Sepsis and other infectious conditions of the newborn") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(sepsis_data)
# 
# nutritional_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Other communicable, perinatal and nutritional conditions") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(nutritional_data)
# 
# congenital_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Congenital anomalies") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(congenital_data)
# 
# other_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Other noncommunicable diseases") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(other_data)
# 
# injuries_data <- all_disease %>%
#   filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
#   filter(CHILDCAUSE..DISPLAY. == "Injuries") %>%
#   filter(YEAR..DISPLAY. == 2017) %>% 
#   select(Display.Value) %>%
#   summarise(Display.Value = sum(Display.Value))
# 
# # print(injuries_data)



############



# Helper functions to filter data


# Select and filter only the relevant columns, ages, and year
# Rename columns to be more readable

get_most_recent_all_disease <- function() {
  
  most_recent_all_disease <- all_disease %>% 
    filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
    filter(YEAR..DISPLAY. == 2017) %>% 
    select(COUNTRY..DISPLAY.,
           CHILDCAUSE..DISPLAY.,
           Display.Value) %>% 
    rename(country = COUNTRY..DISPLAY.,
           cause = CHILDCAUSE..DISPLAY.,
           deaths = Display.Value)
  
  return(most_recent_all_disease)
  
}


# Summarize cause data

get_cause_deaths_table <- function(){
  
  cause_deaths_table <- get_most_recent_all_disease() %>% 
    group_by(cause) %>%
    summarize(cause_deaths = sum(deaths, na.rm = TRUE))
  
  return(cause_deaths_table)
  
}


############

# Functions to be called in Dynamic Paragraph section of `index.Rmd`


get_most_recent_leading_cause <- function() {
  
  most_recent_leading_cause <- get_cause_deaths_table() %>% 
    filter(cause_deaths == max(cause_deaths, na.rm = TRUE)) %>%
    pull(cause)
  
  return(most_recent_leading_cause)
  
  # return("Acute lower respiratory infection")
  
}

get_most_recent_leading_cause_total_deaths <- function() {
  
  most_recent_leading_cause_total_deaths <- get_cause_deaths_table()  %>% 
    filter(cause_deaths == max(cause_deaths, na.rm = TRUE)) %>%
    pull(cause_deaths)
  
  return(most_recent_leading_cause_total_deaths)
  
  # return(22972323)
  
}



get_most_recent_trailing_cause <- function() {
  
  most_recent_trailing_cause <- get_cause_deaths_table()  %>% 
    filter(cause_deaths == min(cause_deaths, na.rm = TRUE)) %>%
    pull(cause)
  
  return(most_recent_trailing_cause)
  
  # return("Meningitis")
  
}

get_most_recent_trailing_cause_total_deaths <- function() {
  
  most_recent_trailing_cause_total_deaths <- get_cause_deaths_table()  %>% 
    filter(cause_deaths == min(cause_deaths, na.rm = TRUE)) %>%
    pull(cause_deaths)
  
  return(most_recent_trailing_cause_total_deaths)
  
  # return(4185463)
  
}

get_most_recent_leading_cause_leading_country <- function() {
  
  most_recent_leading_cause_leading_country <- get_most_recent_all_disease()  %>% 
    filter(cause == get_most_recent_leading_cause()) %>%
    filter(deaths == max(deaths, na.rm = TRUE)) %>% 
    pull(country)
  
  return(most_recent_leading_cause_leading_country)
  
  # return("India")
  
}

get_most_recent_leading_cause_leading_country_deaths <- function() {
  
  most_recent_leading_cause_leading_country_deaths <- get_most_recent_all_disease()  %>% 
    filter(cause == get_most_recent_leading_cause()) %>%
    filter(deaths == max(deaths, na.rm = TRUE)) %>% 
    pull(deaths)
  
  return(most_recent_leading_cause_leading_country_deaths)
  
  # return(141970)
  
}
