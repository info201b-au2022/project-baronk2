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

library("ggiraph")
library("RColorBrewer")




# function to build data frame for pie chart
build_pi_data_frame <- function(year) {
  #read data
  all_causes <- read.csv("https://raw.github.com/info201b-au2022/project-baronk2/main/data/00-all-causes.csv")
  # View(all_causes)
  #build data frame
  pi_data_frame <- all_causes %>%
    filter(YEAR..CODE. == year, AGEGROUP..DISPLAY. == "0-4 years") %>%
    group_by(CHILDCAUSE..DISPLAY.) %>%
    summarise(total = sum(Display.Value)) %>%
    rename(cause = CHILDCAUSE..DISPLAY.)
  
  return(pi_data_frame)
}


# Read in data from WHO (previously stored to repo file)
# Remove any geographic entities that don't have ISO codes
# Select relevant data


all_causes_relevant <-
  read.csv(
    "./data/00-all-causes.csv"
  ) %>% 
  select(
    YEAR..CODE.,
    COUNTRY..DISPLAY.,
    COUNTRY..CODE.,
    AGEGROUP..DISPLAY.,
    CHILDCAUSE..DISPLAY.,
    Display.Value
  ) %>% 
  rename(
    year = YEAR..CODE.,
    iso_code = COUNTRY..CODE.,
    country = COUNTRY..DISPLAY.,
    age = AGEGROUP..DISPLAY.,
    cause = CHILDCAUSE..DISPLAY.,
    deaths = Display.Value
  ) %>% 
  filter(
    iso_code != "",
    !is.na(
      iso_code
    )
  ) %>% 
  filter(
    age == "0-4 years"
  ) %>% 
  mutate(
    country = trimws(
      country
    )
  )



# Read in landmass (country) shapes (file previously stored to repo file)
# Rename `region` column to `country` to match WHO's dataframe for joining
# Remove whitespace from records in `subregion` column since some was found,
# which would interfere with string matching
# Rename certain countries and modify associated subregions to match country
# names as they appear in WHO dataframe.

country_shapes <-
  read.csv(
    "./data/country_shapes_original.csv"
  ) %>%
  rename(
    country = region
  ) %>%
  mutate(
    subregion = trimws(
      subregion
    ),
    country = trimws(
      country
    )
  ) %>% 
  mutate(
    subregion = case_when(
      country == "Antigua" ~ "Antigua",
      country == "Barbuda" ~ "Barbuda",
      country == "Nevis" ~ "Nevis",
      country == "Saint Kitts" ~ "Saint Kitts",
      country == "Trinidad" ~ "Trinidad",
      country == "Tobago" ~ "Tobago",
      country == "Saint Vincent" ~ "Saint Vincent",
      TRUE ~ subregion
    )
  ) %>% 
  mutate(
    country = case_when(
      country == "Antigua" ~ "Antigua and Barbuda",
      country == "Barbuda" ~ "Antigua and Barbuda",
      country == "Bolivia" ~ "Bolivia (Plurinational State of)",
      country == "Brunei" ~ "Brunei Darussalam",
      country == "Ivory Coast" ~ "Côte d'Ivoire",
      country == "Republic of Congo" ~ "Congo",
      country == "Cape Verde" ~ "Cabo Verde",
      country == "Czech Republic" ~ "Czechia",
      country == "Micronesia" ~ "Micronesia (Federated States of)",
      country == "UK" ~ "United Kingdom of Great Britain and Northern Ireland",
      country == "Iran" ~ "Iran (Islamic Republic of)",
      country == "Nevis" ~ "Saint Kitts and Nevis",
      country == "Saint Kitts" ~ "Saint Kitts and Nevis",
      country == "South Korea" ~ "Republic of Korea",
      country == "Laos" ~ "Lao People's Democratic Republic",
      country == "Moldova" ~ "Republic of Moldova",
      country == "North Korea" ~ "Democratic People's Republic of Korea",
      country == "Russia" ~ "Russian Federation",
      country == "Swaziland" ~ "Eswatini",
      country == "Syria" ~ "Syrian Arab Republic",
      country == "Trinidad" ~ "Trinidad and Tobago",
      country == "Tobago" ~ "Trinidad and Tobago",
      country == "Turkey" ~ "Türkiye",
      country == "Tanzania" ~ "United Republic of Tanzania",
      country == "USA" ~ "United States of America",
      country == "Grenadines" ~ "Saint Vincent and the Grenadines",
      country == "Saint Vincent" ~ "Saint Vincent and the Grenadines",
      country == "Venezuela" ~ "Venezuela (Bolivarian Republic of)",
      country == "Vietnam" ~ "Viet Nam",
      TRUE ~ country
    )
  )



# Function that returns the map as a ggplot object with other layers and specs

get_world_deaths_map <-
  function(
    all_causes_all_years_deaths,
    country_shapes,
    start_year,
    end_year,
    cause_of_death
  ) {
    
    # Filter the data to be between `start_year` and `end_year` and by cause
    period_cause_deaths <- 
      all_causes_all_years_deaths %>% 
      filter(
        year >= start_year,
        year <= end_year,
        cause == cause_of_death
      ) %>% group_by(
        country
      ) %>%
      summarize(
        country = country,
        years = paste0(
          start_year,
          "-",
          end_year
        ),
        cause = cause,
        deaths = sum(
          deaths,
          na.rm = TRUE
        ),
        tooltip_text = paste0(
          country,
          "\n",
          years,
          "\n",
          prettyNum(
            deaths,
            big.mark = ","
          ),
          " child deaths from ",
          cause
        )
      ) %>% 
      distinct(
        country,
        years,
        deaths,
        tooltip_text
      )
    
    country_shapes_period_cause_deaths <- 
      country_shapes %>% 
      left_join(
        period_cause_deaths,
        by = "country"
      )
    
    
    # Function for setting the aesthetics of the plot
    my_theme <- function () {
      theme_bw() + 
        theme(
          plot.title = element_text(
            hjust=0.5
          ),
          plot.subtitle = element_text(
            hjust=0.5
          ),
          axis.title = element_blank(),
          axis.text = element_blank(),
          axis.ticks = element_blank(),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.background = element_blank(),
          legend.position = "right",
          legend.title.align = 0.5,
          panel.border = element_blank(),
          strip.background = element_rect(
            fill = 'white',
            color = 'white'
          )
        )
    }
    
    
    # Specify the plot for the world map
    
    map <- ggplot() +
      geom_polygon_interactive(
        data = subset(
          country_shapes_period_cause_deaths,
          # lat >= -60 & lat <= 90
        ),
        color = 'gray70',
        size = 0.1,
        aes(
          x = long,
          y = lat,
          fill = deaths,
          group = group,
          tooltip = tooltip_text
        )
      ) +
      
      scale_fill_gradientn(
        colors = rev(
          brewer.pal(
            5,
            "Spectral"
          )
        ),
        na.value = 'white'
      ) +
      
      
      labs(
        fill = "Deaths",
        title = paste0(
          "Child Deaths (Under Age 5) From ",
          cause_of_death
        ),
        subtitle = paste0(
          start_year,
          "-",
          end_year
        ),
        x = NULL,
        y = NULL
      ) +
      
      my_theme()
    
    return(
      map
    )
  }


# Function that returns a `girafe()` object, which will allow the map to be
# interactive like a `plotly` plot

get_interactive_map <-
  function(
    world_child_deaths_map
  ) {
    interactive_map <- 
      girafe(
        ggobj = world_child_deaths_map,
        width_svg = 7,
        height_svg = 4
      )
    
    return(
      interactive_map
    )
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
  
  
  output$child_deaths_map <-
    renderGirafe({
      get_interactive_map(
        get_world_deaths_map(
          all_causes_relevant,
          country_shapes,
          input$years[[1]],
          input$years[[2]],
          input$cause
        )
      )
      
    })
  
  
  
  
  
  
  
  
  # Section for any other server elements to avoid merge conflicts
  
  
  
  
  
  
  
  
}


