# tab_panel_intro

library(shiny)



# Expected Project Structure Description
# from
# Canvas Assignment P3: Final Deliverable

# An introductory page.
# 
# This page should provide a brief overview of your project: What major questions 
# are you seeking to answer and what data will you use to answer those questions?
# 
# You should include some "additional flare" on this landing page, such as an
# image. The key goal: Invite your audience to consider your project.



# Rubric Description
# from
# Canvas Assignment P3: Final Deliverable

# Introductory page
# * Provides an introduction and summary of the project
# - What is the problem domain?
#   - What are the research questions?
#   - What data was analyzed?
#   - What are the key findings?
#   
#   * Information design
# - A strong, clean, and inviting format



tab_panel_intro <-tabPanel(
    "Introduction",
    p("Child mortality is an everyday problem that many unlucky families unfortunately 
    have to deal with. Child mortality stems from different causes including diseases,
    accidental situations, income status, etc. In this specific report, we have
    decided to broaden our knowledge on the specific diseases causing children under the age of 5 to die. We first started this report by finding a specific problem to give us a sense of direction. This problem relates to the 53 countries that need to catch up with the other 142 countries in reaching the global goal of having yearly rates of 25 deaths per 1000 live births by 2030, in children under 5. With this problem, research questions such as, “What was the most recently recorded leading cause of death globally for children age 0-4 years old (Under 5 years old) in the dataset?” and “For all recorded years in the dataset, which country has the most child deaths from any listed cause for ages 0-4 years old? Which country had the fewest child deaths for the same period and set of causes?”, were thought of. To answer these questions, we decided to use the help of the World Health Organization (WHO) and examine their datasets on child mortality.
  By looking at WHO, we were able to note down some key findings such as Acute Lower 
  Respiratory Infection being the leading cause of death in children under age 5, 
  in the past 30 years. With this information, stakeholders such as the Government 
  and Healthcare will know what disease they’ll need to prioritize finding a cure 
  for, decreasing mortality rates. Another key finding was discovered when answering 
  the question, “How does the world's most recently recorded leading cause of death 
  compare to other global leading causes of death and to other global causes of death 
  in general for this age category?”. When comparing the different diseases from 
  the data set, we saw that Prematurity infections was in a close second, causing 
  20 million deaths, only 2 million deaths lower than Acute Lower Respiratory. In 
  addition, Asphyxia has caused numerous deaths, just a little under 16 million. 
  With this information, changes need to be implemented in the health care system 
  so child mortality rates decrease. The government and health care should be 
  collectively worrying about all diseases causing deaths in children and finding 
  ways to solve them on a global scale. All in all, child mortality is a problem 
  that should be made aware for everyone around the globe, and with our project, 
  we hope we were able to do that. 
")
)


# Here are some possibly relevant sections from the Proposal that we could copy
# and paste sentences, paragraphs, or whole sections of (Introduction) into the
# final project Introduction (into `p()` paragraph functions as in the example
# above):
# 
# 
# ## Abstract
# 
# Our group's main concern that needs to be addressed relates to the biggest 
# contributor causing global child mortality rates to increase. This concern is 
# very important since it will give everyone a better understanding on what is 
# causing infants to die, hopefully leading to a solution. With a solution, 
# families will no longer be stripped of their loved ones. To address this 
# concern, we plan on searching through the many different datasets given to us by
# the World Health Organization (WHO).
# 
# ## Keywords
# 
# 
# ## Introduction
# 
# This project was created because we find child mortality to be a important
# global issue. While much progress has been made over the years to reduce the
# child mortality rate, there is still a ways to go. Take the death toll of
# children five and under in 2020 as an example, about five million died
# [(UNICEF, under five mortality)](https://data.unicef.org/topic/child-survival/under-five-mortality/).
# Our goal is to analyze and share the intersectionality of age group, country, 
# disease, and year of child mortality. In doing so, we hope that people will be 
# better equipped to minimize child mortality.
# 
# 
# ## Problem Domain
# 
# ### The problem
# 
# Thanks to innovation in medicine and health, the child mortality rates have
# been significantly decreased over the years. There was a 58% decrease in deaths
# of children under the age of five from 1990 to 2019
# [(UNICEF)](https://data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/).
# This drastic decrease is partly thanks to the *sustainable development goals for
# neonatal and children under five mortality* set by the UN General Assembly back
# in 2015. Their new goals called for all countries to have a neonatal mortality
# rate as low as 12 deaths for every 1000 live births, and for the under five
# years rate to be 25 deaths per 1000 live births by 2030, [(Child Survival and the
# SDGs)](https://data.unicef.org/topic/child-survival/child-survival-sdgs/).
# According to UNICEF, "As of 2019, 116 countries have reached the SDG NMR
# [sustainable development goal for neonatal mortality rate] target with 16 on
# track, leaving 63 at risk of missing the target” and “As of 2019, 122 of 195
# countries have achieved the SDG U5MR [Sustainable development goal for children
# under five mortality rate] target, and 20 countries are on track to achieve the
# target by 2030, while 53 will need to accelerate progress to meet the target by
# 2030.” [(Global, regional, and national trends in under five
# mortality)](https://data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/).
# Analyzing data on child mortality rates can help countries to continue to stay
# on track to meet their 2030 sustainable goals, or get onto the right track.
# 
# ### Human Values
# 
# When it comes to human values associated with this project, empathy and 
# advancement come to mind.
# 
# ### Stakeholders
# 
# The direct stakeholders for the results of this project would be government and 
# UN officials. With more data on child mortality rates, governments and UN would 
# be able to use it to fine tune their policies to bring those rates down. 
# Different countries could focus on diseases most impactful for their region, and
# global organization can focus on the general hard-hitting diseases. The indirect
# stakeholders would be children, or to be even broader, families. Since the 
# policies that governments or the UN or other global health organizations make 
# could be affected by the findings of this project, the children’s healthcare 
# will be strongly affected by those policies. This makes children/their families
# indirectly affected by this project.
# 
# ### Potential Benefits and Harms
# 
# If governments, and the general public, can see which diseases are causing the 
# most child deaths, they can be more effective in splitting resources and time to
# minimize their child mortality rates. This is a huge benefit as it can
# contribute to the overall sustainable development goals regarding child
# mortality and save lives! A potential downside to this is that the vast majority
# of resources and attention could become focused on only a couple of the more 
# hard-hitting diseases, leaving children suffering from the lesser known diseases
# in the same or even worse situation as before.

