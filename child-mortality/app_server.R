#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(dplyr)
library(ggplot2)
library(plotly)


# function to build data frame for pie chart
build_pi_data_frame <- function(year) {
  #read data
  all_causes <- read.csv("https://raw.github.com/info201b-au2022/project-baronk2/main/data/00-all-causes.csv")
  View(all_causes)
  #build data frame
  pi_data_frame <- all_causes %>%
    filter(YEAR..CODE. == year, AGEGROUP..DISPLAY. == "0-4 years") %>%
    group_by(CHILDCAUSE..DISPLAY.) %>%
    summarise(total = sum(Display.Value)) %>%
    rename(cause = CHILDCAUSE..DISPLAY.)
  
  return(pi_data_frame)
}



server <- function(input, output) {
    
  
  
  # Section for any Pie Chart server elements to avoid merge conflicts
  output$pi_chart <- renderPlotly({
    
    #read user input
    year <- input$year_choice
    
    #build data
    pi_data <- build_pi_data_frame(year)
    
    pi_plot <- plot_ly(pi_data, labels = ~cause, values = ~total, type = 'pie') 
    
    pi_plot <- pi_plot %>% layout(
      title = "Deaths in Year",
      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
    
    pi_plot
  })
  
  
  
  
  
  
  
  
  
  
  # Section for any Map server elements to avoid merge conflicts
  
  
  
  
  
  
  
  
  
  
  # Section for any other server elements to avoid merge conflicts
  
  
  
  
  
  
  
  
}


