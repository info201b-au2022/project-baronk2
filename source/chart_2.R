# pi chart comparing amount of deaths caused by each of the 13 categories 
library(tidyverse)
library(dplyr)
library(ggplot2)


# re-calculate everything for only the year 2017

# HIV and AIDS
# hiv_aids_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/01-hiv-aids.csv")
# hiv_aids_recent <- hiv_aids_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# 
# # diarrhoeal diseases data 
# diarrhoeal_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/02-diarrhoeal-diseases.csv")
# diarrhoeal_recent <- diarrhoeal_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # measles data
# measles_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/03-measles.csv")
# measles_recent <- measles_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # meningitis-encephalitis
# meningitis_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/04-meningitis-encephalitis.csv")
# meningitis_recent <- meningitis_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # malaria
# malaria_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/05-malaria.csv")
# malaria_recent <- malaria_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # acute-lower-respiratory-infections
# respiratory_infections_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/06-acute-lower-respiratory-infections.csv")
# respiratory_infections_recent <- respiratory_infections_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # prematurity
# prematurity_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/07-prematurity.csv")
# prematurity_recent <- prematurity_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # birth_asphyxia_trauma
# birth_asphyxia_trauma_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/08-birth-asphyxia-and-birth-trauma.csv")
# birth_asphyxia_trauma_recent <- birth_asphyxia_trauma_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # sepsis
# sepsis_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/09-sepsis-and-other-infectious-conditions-of-the-newborn.csv")
# sepsis_recent <- sepsis_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # other_communicable_diseases
# other_communicable_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/10-other-communicable--perinatal-and-nutritional-conditions.csv")
# other_communicable_recent <- other_communicable_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # congenital_anomalies
# congenital_anomalies_data <- read.csv("https://github.com/info201b-au2022/project-baronk2/blob/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/11-congenital-anomalies.csv")
# congenital_anomalies_recent <- congenital_anomalies_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # other_noncommunicable
# other_noncommunicable_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/12-other-noncommunicable-diseases.csv")
# 
# other_noncommunicable_recent <- other_noncommunicable_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value))
# 
# # injuries
# injuries_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/13-injuries.csv")
# injuries_recent <- injuries_data %>%
#   select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
#          -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
#          -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
#          -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
#          -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
#   filter(YEAR..DISPLAY. == 2017) %>%
#   summarise(total_deaths = sum(Display.Value)) %>%
#   select(total_deaths)
# 
# # make data frame
# 
cause <- c("HIV/AIDS", "Diarrhoeal Diseases", "Measles", "Meningitis", "Malaria", "Respiratory Infections",
           "Prematurity", "Birth Asphyxia Trauma", "Sepsis", "Other Communicable Diseases", "Congenital Anomalies",
           "Other Noncommunicable Diseases", "Injuries")
# 
# deaths <- c(hiv_aids_recent, diarrhoeal_recent, measles_recent, meningitis_recent, malaria_recent,
#            respiratory_infections_recent, prematurity_recent, birth_asphyxia_trauma_recent, 
#            sepsis_recent, other_communicable_recent, congenital_anomalies_recent, 
#            other_noncommunicable_recent, injuries_recent)
# 
# deaths_in_2017 <- data.frame(deaths, cause)


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
  # diarrhoeal_diseases = diarrhoeal_table$total_deaths,
  # measles = measles_table$total_deaths,
  # meningitis = meningitis_table$total_deaths, 
  # malaria = malaria_table$total_deaths,
  # acute_lower_respiratory_infections = respiratory_infections_table$total_deaths,
  # prematurity = prematurity_table$total_deaths,
  # birth_asphyxia_trauma=birth_asphyxia_trauma_table$total_deaths,
  # sepsis = sepsis_table$total_deaths,
  # other_communicable_diseases = other_communicable_table$total_deaths,
  # congenital_anomalies = congenital_anomalies_table$total_deaths, 
  # other_noncommunicable_diseases = other_noncommunicable_table$total_deaths,
  # injuries = injuries_table$total_deaths 
)




