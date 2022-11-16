# dynamic_paragraph_stats.R
all_disease <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/main/data/00-all-causes.csv")
View(all_disease)

hiv_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "HIV/AIDS") %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))
print(hiv_data)

Diarrhoeal_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Diarrhoeal diseases") %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))
print(Diarrhoeal_data)

measles_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Measles") %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))
print(measles_data)

Meningitis_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Meningitis/encephalitis") %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))
print(Meningitis_data)

malaria_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Malaria") %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))
print(malaria_data)

acute_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Acute lower respiratory infections") %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))
print(acute_data)
                        
premature_data <- all_disease %>%
filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
filter(CHILDCAUSE..DISPLAY. == "Prematurity") %>%
select(Display.Value) %>%
summarise(Display.Value = sum(Display.Value))
print(premature_data)

birth_data <- all_disease %>%
filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
filter(CHILDCAUSE..DISPLAY. == "Birth asphyxia and birth trauma") %>%
select(Display.Value) %>%
summarise(Display.Value = sum(Display.Value))
print(birth_data)

sepsis_data <- all_disease %>%
filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
filter(CHILDCAUSE..DISPLAY. == "Sepsis and other infectious conditions of the newborn") %>%
select(Display.Value) %>%
summarise(Display.Value = sum(Display.Value))
print(sepsis_data)

nutritional_data <- all_disease %>%
filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
filter(CHILDCAUSE..DISPLAY. == "Other communicable, perinatal and nutritional conditions") %>%
select(Display.Value) %>%
summarise(Display.Value = sum(Display.Value))
print(nutritional_data)


congenital_data <- all_disease %>%
filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
filter(CHILDCAUSE..DISPLAY. == "Congenital anomalies") %>%
select(Display.Value) %>%
summarise(Display.Value = sum(Display.Value))
print(congenital_data)

other_data <- all_disease %>%
filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
filter(CHILDCAUSE..DISPLAY. == "Other noncommunicable diseases") %>%
select(Display.Value) %>%
summarise(Display.Value = sum(Display.Value))
print(other_data)

injuries_data <- all_disease %>%
filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
filter(CHILDCAUSE..DISPLAY. == "Injuries") %>%
select(Display.Value) %>%
summarise(Display.Value = sum(Display.Value))
print(injuries_data)
                        
get_most_recent_leading_cause <- function() {
  
  return("Acute lower respiratory infection")
  
}

get_most_recent_leading_cause_total_deaths <- function() {
  
  return(22972323)
  
}

get_most_recent_trailing_cause <- function() {
  
  return("Meningitis")
  
}

get_most_recent_trailing_cause_total_deaths <- function() {
  
  return(4185463)
  
}

get_most_recent_leading_cause_leading_country <- function() {
  
  return("India")
  
}

get_most_recent_leading_cause_leading_country_deaths <- function() {
  
  return(141970)
  
}