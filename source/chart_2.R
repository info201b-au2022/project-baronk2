# pi chart comparing amount of deaths caused by each of the 13 categories 
library(tidyverse)
library(dplyr)
library(ggplot2)


# re-calculate everything for only the year 2017

cause <- c("HIV/AIDS", "Diarrhoeal Diseases", "Measles", "Meningitis", "Malaria", "Respiratory Infections",
           "Prematurity", "Birth Asphyxia Trauma", "Sepsis", "Other Communicable Diseases", "Congenital Anomalies",
           "Other Noncommunicable Diseases", "Injuries")


hiv_aids_deaths <- aggregated_table %>%
  summarize(total_deaths_hiv = sum(hiv_aids))

diarrhoeal_deaths <- aggregated_table %>%
  summarise(total_diarrhoeal = sum(diarrhoeal_diseases))

measles_deaths <- aggregated_table %>%
  summarise(total_measles = sum(measles))

meningitis_deaths <- aggregated_table %>%
  summarize(total_meningitis = sum(meningitis))

malaria_deaths <- aggregated_table %>%
  summarize(total_malaria = sum(malaria))

acute_lower_respiratory_infections_deaths <- aggregated_table %>%
  summarise(total_acute = sum(acute_lower_respiratory_infections))

prematurity_deaths <- aggregated_table %>%
  summarise(total_prematurity = sum(prematurity))

birth_asphyxia_trauma_deaths <- aggregated_table %>%
  summarise(total_trauma = sum(birth_asphyxia_trauma))

sepsis_deaths <- aggregated_table %>%
  summarise(total_sepsis = sum(sepsis))

other_communicable_diseases_deaths <- aggregated_table %>%
  summarise(total_communicable = sum(other_communicable_diseases))

congenital_anomalies_deaths <- aggregated_table %>%
  summarise(total_anomaqlies = sum(congenital_anomalies))

other_noncommunicable_diseases_deaths <- aggregated_table %>%
  summarise(total_noncomm = sum(other_noncommunicable_diseases))

injuries_deaths <- aggregated_table %>%
  summarise(total_injuries = sum(injuries))
deaths_in_test <- data.frame(
  cause,
  deaths = c(hiv_aids_deaths, diarrhoeal_deaths, measles_deaths, meningitis_deaths, malaria_deaths,
             acute_lower_respiratory_infections_deaths, prematurity_deaths, birth_asphyxia_trauma_deaths,
             sepsis_deaths, other_communicable_diseases_deaths, congenital_anomalies_deaths,
             other_noncommunicable_diseases_deaths, injuries_deaths)
)




