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
        h2("Distribution of Child Mortality Causes"),
        br(),
        plotlyOutput(outputId = "pi_chart"),
        br(),
        br(),
        h3("Why This Chart?"),
        p(
          paste0(
            "This chart was included for many important reasons. It is important ",
            "to see how the different causes of death for children under 5 years old ",
            "fit in with one another for a given year as a percentage of total ",
            "global child deaths. It also shows how the leading cause of ",
            "death changes from year to year, and what sort of margin that change ",
            "in leading cause takes. Different years from "
          ),
          a(
            "The WHO's dataset",
            href = "https://www.who.int/data/gho/data/themes/topics/topic-details/GHO/child-mortality-and-causes-of-death"
          ),
          paste0(
            " can be selected and you can hover over the graphic to see how ",
            "many global deaths the percentages equate to."
          )
        )
      )
    )
)
