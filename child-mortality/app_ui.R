#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_pie_chart.R")
source("tabs/tab_panel_map.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")

ui <- navbarPage(
  tags$style(
    "h2, h3 {
      font-family: sans-serif;
    }"
  ),
  title = "Child Mortality: Global Causes of Death",
  position = "fixed-top",

  # A simple header
  header = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML(""),
    hr()
  ),

  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML(""),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # The three charts
  tab_panel_pie_chart,
  tab_panel_map,

  # The project summary
  tab_panel_summary,

  # The project report
  tab_panel_report
)
