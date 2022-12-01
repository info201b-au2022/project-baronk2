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
    p("This is the introduction.")
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

