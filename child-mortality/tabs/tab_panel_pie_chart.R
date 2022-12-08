# tab_panel_pie_chart

library(shiny)
library(plotly)


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
        br(),
        br(),
        p("This pie chart shows global deaths of children five and under for thirteen different causes by year.",
          "It provides a clear visual of what causes are behind the majority of deaths, and which are not",
          "as pressing. Users can see how the pie chart changes over the years by selecting another year,
          and they can see the exact number of deaths from a specific cause by hovering over its portion 
          in the pie graph. " 
          )
      )
    )
)
