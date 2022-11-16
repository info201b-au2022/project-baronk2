# deaths_map.R

# Already installed
# install.packages("tidyverse")
# install.packages("ggplot2")

library("tidyverse")
library("ggplot2")


# Load in data
get_data <- function() {
  all_causes <- read.csv("https://raw.github.com/info201b-au2022/project-baronk2/main/data/00-all-causes.csv")
  
  return(all_causes)
  }

# Returns a dataframe of shape files for each country, joined with deaths data
get_world_shape_df <- function() {

  # Select only the necessary columns, rename them, and filter out other age
  # categories
  map_initial_df <- get_data() %>% 
    select(YEAR..CODE.,
           COUNTRY..DISPLAY.,
           AGEGROUP..DISPLAY.,
           CHILDCAUSE..DISPLAY.,
           Display.Value
    ) %>% 
    rename(year = YEAR..CODE.,
           country = COUNTRY..DISPLAY.,
           age = AGEGROUP..DISPLAY.,
           cause = CHILDCAUSE..DISPLAY.,
           deaths = Display.Value) %>% 
    filter(age == "0-4 years")
  
  # Summarize the data into total deaths globally by `country`
  map_summarized_df_orig_country_names <- map_initial_df %>%
    group_by(country) %>% 
    summarize(total_deaths = sum(deaths, na.rm = TRUE))
  
  
  # Change the names of some countries to match that found in `maps`
  map_summarized_df <- map_summarized_df_orig_country_names %>% 
    mutate(country = recode(str_trim(country),
                            "Eswatini" = "Swaziland",
                            "Lao People's Democratic Republic" = "Laos",
                            "Viet Nam" = "Vietnam",
                            "Republic of Moldova" = "Moldova",
                            "Czechia" = "Czech Republic",
                            "CC4te d'Ivoire" = "Ivory Coast",
                            "Congo" = "Republic of Congo",
                            "United Republic of Tanzania" = "Tanzania",
                            "Democratic People's Republic of Korea" = "North Korea",
                            "Republic of Korea" = "South Korea",
                            "Syrian Arab Republic" = "Syria",
                            "United Kingdom of Great Britain and Northern Ireland" = "UK",
                            "Bolivia (Plurinational State of)" = "Bolivia",
                            "Venezuela (Bolivarian Republic of)" = "Venezuela",
                            "Iran (Islamic Republic of)" = "Iran",
                            "TC<rkiye" = "Turkey",
                            "Russian Federation" = "Russia",
                            "United States of America" = "USA"
                            )
           )
  
  
  # Load a shapefile of world countries using ggplot's `map_data()` function
  world_shape <- map_data("world") %>% 
    rename(country = region) %>% # Rename for joining
    left_join(map_summarized_df, by = "country") # Join `total_deaths` data
  
  
  return(world_shape)
  
}


# Create a map of global deaths
get_deaths_map <- function() {

  map <- ggplot(get_world_shape_df()) +
    
    geom_polygon(
      mapping = aes(x = long, y = lat, group = group, fill = total_deaths),
      color = "black", # Show country outlines
      size = 0.1       # Thinly stroked
    ) +
    
    coord_map() + # Use a map-based coordinate system
    
    scale_fill_continuous(low = "White", high = "Red") +
    
    labs(title = "Global Deaths of Children 0-4 Years Old\nAll Causes 2000-2017",
         fill = "Child Deaths") +
    
    blank_theme

  return(map)
  
}

# Sets all plotting elements to blank
blank_theme <- theme_bw() +
  theme(
    axis.line = element_blank(),
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.border = element_blank()
  )

get_deaths_map_paragraph <- function() {
  
  paragraph <- "This map shows that certain areas of the world tend to have had more child deaths from 2000 to 2017 from all causes, particularly Central Africa and South and Southeast Asia. But the most obvious statistic is that India has had more than 30,000,000 child deaths for children under five years old in that time span. Certain land areas shown in gray either have no data (Antarctica), or are territories of other countries that do have data (Greenland, considered part of Denmark, and French Guiana, considered a part of France). The horizontal bars and lines across the top appear to be ggplot artifacts of Alaska's and Russia's being displayed on either end of the map. Please ignore them, as they are insignificant to the map's data."
  
  return(paragraph)
  
}
