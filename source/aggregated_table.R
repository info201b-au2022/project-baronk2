library(dplyr)

# wrangle HIV/AIDS data
hiv_aids_data <- read.csv("~/Documents/info201/project-baronk2/data/01-hiv-aids.csv")

hiv_aids_table <- hiv_aids_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

# wrangle diarrhoeal diseases data 
diarrhoeal_data <- read.csv("~/Documents/info201/project-baronk2/data/02-diarrhoeal-diseases.csv")

diarrhoeal_table <- diarrhoeal_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

# wrangle measles data
measles_data <- read.csv("~/Documents/info201/project-baronk2/data/03-measles.csv")

measles_table <- measles_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(measles_table)

# wrangle 04-meningitis-encephalitis.csv
meningitis_data <- read.csv("~/Documents/info201/project-baronk2/data/04-meningitis-encephalitis.csv")

meningitis_table <- meningitis_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(meningitis_table)

# wrangle 05-malaria.csv
malaria_data <- read.csv("~/Documents/info201/project-baronk2/data/05-malaria.csv")

malaria_table <- malaria_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(malaria_table)

# wrangle 06-acute-lower-respiratory-infections.csv
respiratory_infections_data <- read.csv("~/Documents/info201/project-baronk2/data/06-acute-lower-respiratory-infections.csv")

respiratory_infections_table <- respiratory_infections_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(respiratory_infections_table)  

# wrangle 07-prematurity.csv
prematurity_data <- read.csv("~/Documents/info201/project-baronk2/data/07-prematurity.csv")

prematurity_table <- prematurity_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(prematurity_table) 

# wrangle 08-birth-asphyxia-and-birth-trauma.csv
birth_asphyxia_trauma_data <- read.csv("~/Documents/info201/project-baronk2/data/08-birth-asphyxia-and-birth-trauma.csv")

birth_asphyxia_trauma_table <- birth_asphyxia_trauma_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(birth_asphyxia_trauma_table) 

# wrangle 09-sepsis-and-other-infectious-conditions-of-the-newborn.csv
sepsis_data <- read.csv("~/Documents/info201/project-baronk2/data/09-sepsis-and-other-infectious-conditions-of-the-newborn.csv")

sepsis_table <- sepsis_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(sepsis_table) 

# wrangle 10-other-communicable--perinatal-and-nutritional-conditions.csv
other_communicable_data <- read.csv("~/Documents/info201/project-baronk2/data/10-other-communicable--perinatal-and-nutritional-conditions.csv")

other_communicable_table <- other_communicable_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(other_communicable_table) 

# wrangle 11-congenital-anomalies.csv
congenital_anomalies_data <- read.csv("~/Documents/info201/project-baronk2/data/11-congenital-anomalies.csv")

congenital_anomalies_table <- congenital_anomalies_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(congenital_anomalies_table) 

# wrangle 12-other-noncommunicable-diseases.csv
other_noncommunicable_data <- read.csv("~/Documents/info201/project-baronk2/data/12-other-noncommunicable-diseases.csv")

other_noncommunicable_table <- other_noncommunicable_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(other_noncommunicable_table) 

# wrangle 13-injuries.csv
injuries_data <- read.csv("~/Documents/info201/project-baronk2/data/13-injuries.csv")

injuries_table <- injuries_data %>%
  select(-GHO..CODE., -GHO..DISPLAY., -GHO..URL., -PUBLISHSTATE..CODE.,
         -PUBLISHSTATE..DISPLAY., -PUBLISHSTATE..URL., -YEAR..CODE., -YEAR..URL., 
         -REGION..CODE., -REGION..DISPLAY., -REGION..URL., -COUNTRY..CODE., -COUNTRY..URL., 
         -AGEGROUP..CODE., -AGEGROUP..URL., -CHILDCAUSE..CODE., -CHILDCAUSE..URL., 
         -Numeric, -Low, -High, -StdDev, -StdErr, -Comments) %>%
  group_by(COUNTRY..DISPLAY.) %>%
  mutate(total_deaths = sum(Display.Value)) %>%
  select(-YEAR..DISPLAY., -AGEGROUP..DISPLAY., -Display.Value) %>%
  distinct(total_deaths)

View(injuries_table) 

  