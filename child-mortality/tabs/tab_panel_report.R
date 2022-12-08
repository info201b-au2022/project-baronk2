# tab_panel_report

library(shiny)
library("markdown")

# Include Markdown file in the same folder as this file

tab_panel_report <-tabPanel(
  "Report",
  includeMarkdown("tabs/report.md")
  
  
)

