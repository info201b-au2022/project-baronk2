# bar_chart_1.R

library(dplyr)
library(ggplot2)

# code to figure out the total amount of deaths from each disease

all_disease <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/main/data/00-all-causes.csv")


hiv_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "HIV/AIDS") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))

print(hiv_data)
View(hiv_data)

Diarrhoeal_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Diarrhoeal diseases") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



measles_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Measles") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



Meningitis_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Meningitis/encephalitis") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



malaria_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Malaria") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



acute_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Acute lower respiratory infections") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



premature_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Prematurity") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



birth_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Birth asphyxia and birth trauma") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



sepsis_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Sepsis and other infectious conditions of the newborn") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



nutritional_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Other communicable, perinatal and nutritional conditions") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))




congenital_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Congenital anomalies") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



other_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Other noncommunicable diseases") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))



injuries_data <- all_disease %>%
  filter(AGEGROUP..DISPLAY. == "0-4 years") %>%
  filter(CHILDCAUSE..DISPLAY. == "Injuries") %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  select(Display.Value) %>%
  summarise(Display.Value = sum(Display.Value))




############

# Create data
get_bar_chart_data <- function() {
  
  data <- data.frame(Diseases=c("HIV/AIDS",
                                "Diarrhoeal",
                                "Measles",
                                "Meningitis",
                                "Malaria",
                                "Respiratory",
                                "Prematurity",
                                "Birth Asphyxia",
                                "Sepsis",
                                "Nutritional",
                                "Congenital",
                                "Other diseases",
                                "Injuries"),
                     Deaths=c(pull(hiv_data, Display.Value),
                              pull(Diarrhoeal_data, Display.Value),
                              pull(measles_data, Display.Value),
                              pull(Meningitis_data, Display.Value),
                              pull(malaria_data, Display.Value),
                              pull(acute_data, Display.Value),
                              pull(premature_data, Display.Value),
                              pull(birth_data, Display.Value),
                              pull(sepsis_data, Display.Value),
                              pull(nutritional_data, Display.Value),
                              pull(congenital_data, Display.Value),
                              pull(other_data, Display.Value),
                              pull(injuries_data, Display.Value)
                     )
  )
  
  return(data)
  
}


# return Bar chart
get_bar_chart <- function(){
  
  p <- ggplot(get_bar_chart_data(), aes(x=Diseases, y=Deaths, fill=Diseases)) +
    geom_bar(stat="identity", width = 0.5)
  
  return(p)
  
}


