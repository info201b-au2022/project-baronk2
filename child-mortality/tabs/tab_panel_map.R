# tab_panel_map

library(shiny)

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

# Interactive Page 2
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



tab_panel_map <-tabPanel(
    "Map",
    p("This is a map.")
)
