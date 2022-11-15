library(dplyr)

# code to figure out the total amount of deaths from each disease
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
View(hiv_aids_table)

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

acute_table <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-baronk2/main/data/06-acute-lower-respiratory-infections.csv"
table
          
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

library(ggplot2)
# bar plot

# Create data
data <- data.frame(
  Diseases=c("HIV/AIDS","Diarrhoeal","Measles","Meningitis","Malaria","Respiratory","Prematurity","Birth Asphyxia","Sepsis","Nutritional","Congenital","Other diseases","Injuries") ,  
  Deaths=c(2951383,13548674,4331460,4185463,8714325,22424319,20972323,15838560,7699710,11486173,9430762,5214289,6923513)
)

# Barplot

p<-ggplot(data, aes(x=Diseases, y=Deaths, fill=Diseases)) +
  geom_bar(stat="identity") 
p

