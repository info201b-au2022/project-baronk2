library(dplyr)

# wrangle HIV/AIDS data
hiv_aids_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/main/data/01-hiv-aids.csv")

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
diarrhoeal_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/02-diarrhoeal-diseases.csv")

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
measles_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/03-measles.csv")

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


# wrangle 04-meningitis-encephalitis.csv
meningitis_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/04-meningitis-encephalitis.csv")

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


# wrangle 05-malaria.csv
malaria_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/05-malaria.csv")

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


# wrangle 06-acute-lower-respiratory-infections.csv
respiratory_infections_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/06-acute-lower-respiratory-infections.csv")

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


# wrangle 07-prematurity.csv
prematurity_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/07-prematurity.csv")

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


# wrangle 08-birth-asphyxia-and-birth-trauma.csv
birth_asphyxia_trauma_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/08-birth-asphyxia-and-birth-trauma.csv")

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


# wrangle 09-sepsis-and-other-infectious-conditions-of-the-newborn.csv
sepsis_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/09-sepsis-and-other-infectious-conditions-of-the-newborn.csv")

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


# wrangle 10-other-communicable--perinatal-and-nutritional-conditions.csv
other_communicable_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/10-other-communicable--perinatal-and-nutritional-conditions.csv")

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


# wrangle 11-congenital-anomalies.csv
congenital_anomalies_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/11-congenital-anomalies.csv")

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


# wrangle 12-other-noncommunicable-diseases.csv
other_noncommunicable_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/12-other-noncommunicable-diseases.csv")

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


# wrangle 13-injuries.csv
injuries_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/35e6cb3ef121de1794b9dde2c9874de5c7a15ce1/data/13-injuries.csv")

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


# aggregated table

aggregated_table <- data.frame(
  country = hiv_aids_table$COUNTRY..DISPLAY.,
  hiv_aids = hiv_aids_table$total_deaths, 
  diarrhoeal_diseases = diarrhoeal_table$total_deaths,
  measles = measles_table$total_deaths,
  meningitis = meningitis_table$total_deaths, 
  malaria = malaria_table$total_deaths,
  acute_lower_respiratory_infections = respiratory_infections_table$total_deaths,
  prematurity = prematurity_table$total_deaths,
  birth_asphyxia_trauma=birth_asphyxia_trauma_table$total_deaths,
  sepsis = sepsis_table$total_deaths,
  other_communicable_diseases = other_communicable_table$total_deaths,
  congenital_anomalies = congenital_anomalies_table$total_deaths, 
  other_noncommunicable_diseases = other_noncommunicable_table$total_deaths,
  injuries = injuries_table$total_deaths 
)

