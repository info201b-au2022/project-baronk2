# tab_panel_pie_chart

library(shiny)
library(plotly)

# Expected Project Structure Description
# from
# Canvas Assignment P3: Final Deliverable
# 
# Three interactive pages.
# Each of these pages will consider a different aspect of your data, addressing 
# specific questions. Each page should have sufficient interactivity (e.g.,
# Shiny widgets + 1 or more reactive charts) for exploring a question of
# interest. If you would prefer to make fewer pages with more complexity, check 
# with your Teaching Assistant. The key goal: Present visualizations that help
# your audience understand your dataset.
# 
# 
# 
# Rubric Description
# from
# Canvas Assignment P3: Final Deliverable

# Interactive Page 1
# * Chart effectiveness
# - The chart is intentionally designed to reveal particular patterns in the data
# - An appropriate chart type and graphical encoding was selected (based on the
#   question of interest and the data type(s) of the features)
# - The chart meets course standards of graphical presentation (see INFO-201 
#   Style Guide)
# 
# * Controls and layout
# - An appropriate layout
# - One or more controls that configure a chart
# - As appropriate, provides well-formatted and detailed information when 
#   hovering each mark on the chart
# - Appropriate default values for chart
# - Appropriate layout of controls and visualization (e.g., a sidebarLayout())
# 
# * Summary paragraph
# - A short description of the purpose of the chart is included



tab_panel_pie_chart <-tabPanel(
    "Pie Chart",
    #user input stuffs
    sidebarLayout(
      sidebarPanel(
        width = 2,
        strong("Select Year:"),
        selectInput(
          inputId = "year_choice",
          label = "year",
          choices = seq(2000, 2017),
          selected = 2000
        )
      ),
      
      #plot goes here
      mainPanel(
        h3("Child Deaths (0-5 Years) by Cause"),
        plotlyOutput(outputId = "pi_chart"),
        p(""),
        p(""),
        p("This pie chart shows global deaths of children five and under for thirteen different causes by year.",
          "It provides a clear visual of what causes are behind the majority of deaths, and which are not",
          "as pressing. Users can see how the pie chart changes over the years by selecting another year,
          and they can see the exact number of deaths from a specific cause by hovering over its portion 
          in the pie graph. " 
          )
      )
    )
)
