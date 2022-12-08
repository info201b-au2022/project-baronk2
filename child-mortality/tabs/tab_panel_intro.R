# tab_panel_intro

library(shiny)


tab_panel_intro <-tabPanel(
    "Introduction",
    h2("Introduction"),
    br(),
    p(
      "Child mortality is an everyday problem that many unlucky families unfortunately 
      have to deal with. Child mortality stems from different causes including diseases,
      accidental situations, income status, etc."
    ),
    p(
      "In this specific report, we have
      decided to broaden our knowledge on the specific diseases causing children under the 
      age of 5 to die. We first started this report by finding a specific problem to give us 
      a sense of direction. This problem relates to the 53 countries that need to catch up 
      with the other 142 countries in reaching the global goal of having yearly rates of 25 
      deaths per 1000 live births by 2030, in children under 5."
    ),
    p(
      "With this problem, research 
      questions such as, “What was the most recently recorded leading cause of death globally 
      for children age 0-4 years old (Under 5 years old) in the dataset?” and “For all 
      recorded years in the dataset, which country has the most child deaths from any listed 
      cause for ages 0-4 years old? Which country had the fewest child deaths for the same 
      period and set of causes?”, were thought of."
    ),
    p(
      "To answer these questions, we decided to 
      use the help of the World Health Organization (WHO) and examine their datasets on child mortality.
      By looking at WHO, we were able to note down some key findings such as Acute Lower 
      Respiratory Infection being the leading cause of death in children under age 5, 
      in the past 30 years."
    ),
    p(
      "With this information, stakeholders such as the Government 
      and Healthcare will know what disease they’ll need to prioritize finding a cure 
      for, decreasing mortality rates. Another key finding was discovered when answering 
      the question, “How does the world's most recently recorded leading cause of death 
      compare to other global leading causes of death and to other global causes of death 
      in general for this age category?”. When comparing the different diseases from 
      the data set, we saw that Prematurity infections was in a close second, causing 
      20 million deaths, only 2 million deaths lower than Acute Lower Respiratory. In 
      addition, Asphyxia has caused numerous deaths, just a little under 16 million."
    ),
    p(
      "With this information, changes need to be implemented in the health care system 
      so child mortality rates decrease. The government and health care should be 
      collectively worrying about all diseases causing deaths in children and finding 
      ways to solve them on a global scale. All in all, child mortality is a problem 
      that should be made aware for everyone around the globe, and with our project, 
      we hope we were able to do that."
    ),
    br(),
    br(),
    br(),
    h2("Consider This:"),
    img(
      src = "intro-image.jpg"
    ),
    p(
      "Source: ",
      a(
        "United Nations Millennium Development Goals",
        href = "https://www.un.org/millenniumgoals/childhealth.shtml"
      )
    )
    
    
    
)

