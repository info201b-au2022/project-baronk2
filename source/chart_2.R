# pi chart comparing amount of deaths caused by each of the 13 categories 
library(tidyverse)
library(dplyr)
library(ggplot2)


# re-calculate everything for only the year 2017

# HIV and AIDS
hiv_aids_recent <- hiv_aids_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# diarrhoeal diseases data 
diarrhoeal_recent <- diarrhoeal_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# measles data
measles_recent <- measles_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# meningitis-encephalitis
meningitis_recent <- meningitis_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# malaria
malaria_recent <- malaria_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# acute-lower-respiratory-infections
respiratory_infections_recent <- respiratory_infections_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# prematurity
prematurity_recent <- prematurity_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# birth_asphyxia_trauma
birth_asphyxia_trauma_recent <- birth_asphyxia_trauma_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# sepsis
sepsis_recent <- sepsis_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# other_communicable_diseases
other_communicable_recent <- other_communicable_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# congenital_anomalies
congenital_anomalies_recent <- congenital_anomalies_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# other_noncommunicable
other_noncommunicable_recent <- other_noncommunicable_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value))

# injuries
injuries_recent <- injuries_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  filter(YEAR..DISPLAY. == 2017) %>%
  summarise(total_deaths = sum(Display.Value)) %>%
  select(total_deaths)

# make data frame

cause <- c("HIV/AIDS", "Diarrhoeal Diseases", "Measles", "Meningitis", "Malaria", "Respiratory Infections",
          "Prematurity", "Birth Asphyxia Trauma", "Sepsis", "Other Communicable Diseases", "Congenital Anomalies",
          "Other Noncommunicable Diseases", "Injuries")

deaths <- c(hiv_aids_recent, diarrhoeal_recent, measles_recent, meningitis_recent, malaria_recent,
           respiratory_infections_recent, prematurity_recent, birth_asphyxia_trauma_recent, 
           sepsis_recent, other_communicable_recent, congenital_anomalies_recent, 
           other_noncommunicable_recent, injuries_recent)

deaths_in_2017 <- data.frame(cause, deaths)

#pi chart
ggplot(deaths_in_2017, aes(x="", y=deaths, fill=cause)) +
  geom_bar(stat="identity", width=1, color="black") +
  coord_polar("y", start=0) +
  
  theme_void()
