# tab_panel_summary

library(shiny)

# Summarize by answering Research Questions

tab_panel_summary <-tabPanel(
    "Summary",
    h2(
      "Summary"
    ),
    br(),
    p(
      "To answer our initial research questions:"
    ),
    br(),
    h4(
      "Question #1"
    ),
    p(
      strong(
        em(
          "What was the most recently recorded annual (2017) leading cause of
          death globally for children age 0-4 years old (Under 5 years old) in 
          the dataset?"
        )
      )
    ),
    p(
      "In 2017, the leading cause of death globally for children under 5 years 
      old was Prematurity, which took the lives of 964,365 preterm babies. 
      The WHO confirms this finding in its own reporting, within in an explanation of ",
      a(
        "prematurity, or preterm birth",
        href = "https://www.who.int/news-room/fact-sheets/detail/preterm-birth"
      ),
      "stating that, for 2015, \"Preterm birth complications are the leading 
      cause of death among children under 5 years of age, responsible for 
      approximately 1 million deaths.\""
    ),
    br(),
    h4(
      "Question #2"
    ),
    p(
      strong(
        em(
          "Which countries have the highest numbers of deaths for this cause of 
      death, age category, and year? Which countries have the lowest numbers of 
      deaths for this cause of death, age category, and year?"
        )
      )
    ),
    p(
      "The three countries with the highest numbers of deaths in 2017 caused by 
      prematurity for children under five years old were India, with 284,398 
      deaths, Pakistan, with 91,048 deaths, and Nigeria, with 84,540 deaths. 
      There is a significant drop off from India to Pakistan, as well as from 
      Nigeria to the fourth highest on the list, The Democratic Republic of the Congo,
      at 34,647 deaths. After that, there is a relatively smooth decline down 
      the rest of the list."
    ),
    p(
      "For 2017, there were four countries that all had zero child deaths recorded 
      from prematurity. Those were The Cook Islands, Monaco, Niue, and San Marino."
    ),
    br(),
    h4(
      "Question #3"
    ),
    p(
      strong(
        em(
          "How does the world's most recently recorded annual (2017) leading cause 
      of death compare to other global leading causes of death and to other 
      global causes of death in general for this age category and year?"
        )
      )
    ),
    p(
      "For children under five years old, while prematurity caused 964,365 deaths 
      in 2017, acute lower respiratory infections caused 808,701 deaths, which  
      represents about 16.1% fewer deaths by comparison. Birth asphyxia and birth 
      trauma took 671,498 children's lives (30.4% fewer than the leading cause). 
      While Prematurity certainly causes more deaths than these other leading causes, 
      it is not by a large order of magnitude."
    ),
    p(
      "Prematurity, however, did cause more deaths than some of the trailing 
      causes of child death, at about 10.5 times as many deaths as Measles 
      (91,649 deaths), and about 12.8 times as many deaths as HIV/AIDS (75,360 
      deaths). An important thing to note is that even these trailing causes are 
      producing staggering numbers of annual child deaths."
    ),
    br(),
    h4(
      "Question #4"
    ),
    p(
      strong(
        em(
          "For all recorded years in the dataset, which country has the most child 
      deaths from any listed cause for ages 0-4 years old? Which country had the
      fewest child deaths for the same period and set of causes?"
        )
      )
    ),
    p(
      "From 2000 to 2017, India recorded 30,556,631 child deaths under age five 
      by all listed causes."
    ),
    p(
      "Niue, a small island country northeast of New Zealand, recorded zero 
      child deaths under age five from any causes in the same time period. The 
      country with the fewest non-zero child deaths due to all causes in the 
      time period was San Marino, at eight child deaths."
    )
)

