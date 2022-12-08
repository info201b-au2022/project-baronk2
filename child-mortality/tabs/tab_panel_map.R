# tab_panel_map

library(shiny)
library("ggiraph")


tab_panel_map <-tabPanel(
    # "Map",
    # p("This is a map.")
    
  
  "Map",
  
  titlePanel(
    "Map"
  ),
  
  sidebarLayout(
    
    sidebarPanel(
      
      # For user to select which years the map will display data for
      
      sliderInput(
        "years",
        label = h3(
          "Year Range"
        ),
        min = 2000, 
        max = 2017,
        value = c(
          2005,
          2010
        ),
        ticks = FALSE,
        sep = ""
      ),
      
      # For user to select which Cause of Death the map will display
      
      selectInput(
        "cause",
        label = h3(
          "Cause of Death"
        ),
        choices = list(
          "HIV/AIDS" = "HIV/AIDS",
          "Diarrhoeal diseases" = "Diarrhoeal diseases",
          "Measles" = "Measles",
          "Meningitis/encephalitis" = "Meningitis/encephalitis",
          "Malaria" = "Malaria",
          "Acute lower respiratory infections" = "Acute lower respiratory infections",
          "Prematurity" = "Prematurity",
          "Birth asphyxia and birth trauma" = "Birth asphyxia and birth trauma",
          "Sepsis and other infectious conditions of the newborn" = "Sepsis and other infectious conditions of the newborn",
          "Other communicable, perinatal and nutritional conditions" = "Other communicable, perinatal and nutritional conditions",
          "Congenital anomalies" = "Congenital anomalies",
          "Other noncommunicable diseases" = "Other noncommunicable diseases",
          "Injuries" = "Injuries"
        ), 
        selected = "HIV/AIDS"
      )
      
    ),
    
    mainPanel(
      
      girafeOutput("child_deaths_map"),
      
      
      # Map caption
      
      p(
        paste0(
          "This map shows how many child deaths (age under 5 years old) have ",
          "occurred in any given country for a selected time set of years ",
          "between 2000 and 2017 and a selected cause of death. Using the map, ",
          "you can easily see which countries have had more deaths and which have ",
          "had fewer deaths using their color and the color scale to the right ",
          "of the map. You can also hover over a country to see the exact number ",
          "of recorded deaths for the time period and cause."
        )
      ),
      br(),
      p(
        "Source: ",
        a(
          "World Health Organization (WHO)",
          href = "https://www.who.int/data/gho/data/themes/topics/topic-details/GHO/child-mortality-and-causes-of-death"
        )
        
      )
      
    )
    
  )
  
    
    
    
)
