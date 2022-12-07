# tab_panel_report

library(shiny)
library("markdown")


# See `tabs\report.md` for the report itself, with the sections to be completed,
# and references to the Canvas Assignment requirements.
# 
# The structure Dave made for us it looks like uses the `includeMarkdown()`
# function below to directly input that `report.MD` file and all its formatting,
# which is really helpful!



tab_panel_report <-tabPanel(
  "Report",
  includeMarkdown("tabs/report.md")
  
  
)





# tab_panel_report <-tabPanel(
#   "Report",
# 
#   fluidRow(
#     column(
#       6,
#       includeMarkdown("tabs/report.md")
#     ),
#     column(
#       3,
#       p("This is a paragraph.")
#     ),
#     column(
#       3,
#       p("Rightmost column.")
#     )
#   )
# 
# 
# )

