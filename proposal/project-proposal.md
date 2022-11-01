# *Child Mortality: Global Causes of Death* Proposal

## Code Name

"Rick And Child Morty"


## Project Title

Child Mortality: Global Causes of Death


## Authors


Jonathan To- jto9331@uw.edu

Hiba Abbas- hibaa3@uw.edu

Kevin Baron- baronk2@uw.edu

## Affiliation

INFO-201B: Technical Foundations of Informatics - The Information School -
University of Washington - Professor Dave Hendry - TA Ishita Saxena


## Date

Autumn 2022


## Abstract

Our groups main concern that needs to be addressed relates to the biggest contributor causing global child mortality rates to increase. This concern is very important since it will give everyone a better understanding on what is causing infants to die, hopefully leading to a solution. With a solution,  families will no longer be stripped of their loved ones. To address this concern, we plan on searching through the many different datasets given to us by the World Health Organization (WHO).

## Keywords

Infant Diseases :mask:

Mortality :skull:

Global :earth_asia:

WHO :microscope:

## Introduction

This project was created because we find child mortality to be an important global issue. While much progress has been made over the years to reduce the child mortality rate, there is still a ways to go. Take the death toll of
children five and under in 2020 as an example, about five million died
[(UNICEF, under five mortality)](https://data.unicef.org/topic/child-survival/under-five-mortality/).
Our goal is to analyze and share the intersectionality of age group, country, disease,
and year of child mortality. In doing so, we hope that people will be better
equipped to minimize child mortality.

## Problem Domain

### The problem

Thanks to innovation in medicine and health, the child mortality rates have
been significantly decreased over the years. There was a 58% decrease in deaths
of children under the age of five from 1990 to 2019
[(UNICEF)](https://data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/).
This drastic decrease is partly thanks to the *sustainable development goals for
neonatal and children under five mortality* set by the UN General Assembly back
in 2015. Their new goals called for all countries to have a neonatal mortality
rate as low as 12 deaths for every 1000 live births, and for the under five
years rate to be 25 deaths per 1000 live births by 2030, [(Child Survival and the
SDGs)](https://data.unicef.org/topic/child-survival/child-survival-sdgs/).
According to UNICEF, "As of 2019, 116 countries have reached the SDG NMR
[sutainable development goal for neonatal mortality rate] target with 16 on
track, leaving 63 at risk of missing the target” and “As of 2019, 122 of 195
countries have achieved the SDG U5MR [Sustainable development goal for children
under five mortality rate] target, and 20 countries are on track to achieve the
target by 2030, while 53 will need to accelerate progress to meet the target by
2030.” [(Global, regional, and natinol trends in under five
mortality)](https://data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/). Analyzing data on child mortality rates can help countries to continue to stay on track to meet their 2030 sustainable goals, or get onto the right track.

### Human Values

When it comes to human values associated with this project, empathy and advancement come to mind.

### Stakeholders

The direct stakeholders for the results of this project would be government and UN officials. With more data on child mortality rates, governments and UN would be able to use it to fine tune their policies to bring those rates down. Different countries could focus on diseases most impactful for their reigon, and global organization can focus on the general hard-hitting diseases. The indirect stakeholders would be children, or to be even broader, families. Since the policies that governments or the UN or other global health organizations make could be affected by the findings of this project, the children’s healthcare will be strongly affected by those policies. This makes children/their familes indirectly affected by this project.

### Potential Benefits and Harms

If governments, and the general public, can see which diseases are causing the most child deaths, they can be more effective in splitting resources and time to minimize their child mortality rates. This is a huge benefit as it can contribute to the overall sustainable development goals regarding child mortality and save lives! A potential downside to this is that the vast majority of resources and attention could become focused on only a couple of the more hard-hitting diseases, leaving children suffering from the lesser known diseases in the same or even worse situation as before.

## Research Questions


**1.** **What was the most recently recorded leading cause of death globally for children age 0-27 days old in the dataset?**

  *Infants not surviving past the first month of life is one of the saddest things in the world, and is not a problem specific to any one country, but is a major problem around the world.*

**2.** **Which countries have the highest numbers of deaths for this cause of death and age category? Which countries have the lowest numbers of deaths for this cause of death and age category?**

  *Where is this problem concentrated? Are there any patterns to where the leading cause of death is most likely to strike? Knowing where the problem is occurring could be key to solving the problem itself, just as [John Snow](https://learn.arcgis.com/en/projects/map-a-historic-cholera-outbreak/#:~:text=through%20the%20air.-,Dr.,and%20waste%20systems%20in%20London.) discovered by plotting out cholera deaths in London in 1854.*

**3.** **How does the world's most recently recorded leading cause of death compare to other global leading causes of death and to other global causes of death in general for this age category?**

  *Is the leading cause of death for infants the only one we should collectively be worrying about and focusing our problem-solving energy and resources on, or is another one **(or many!)** close on its heels? This information could help determine how we might address these problems on a global triage scale.*

**4.** **For all recorded years in the dataset, which country has the most child deaths from any listed cause for ages 0-4 years old? Which country had the fewest child deaths for the same period and set of causes?**

  *Knowing this could give us perspective on just how much unnecessary and undeserved death has happened over the last number of decades in just one nation, especially when the constraints of the dataset and data collection methods are considered.*


## The Dataset

**1.** The dataset outlines the problem domain. There are thirteen dataframes, each listing a different cause of death for children in three different age categories: 0-27 days, 1-59 months, and 0-4 years, which represents the total for the first two age categories. Each dataframe has total deaths for each year from 2000 to 2017 for every country of the world. By filtering and totaling appropriate rows and columns of certain dataframes, and by creating our own dataframes from combinations of the original ones, we should be able to answer the Research Questions.

  **2.** [See following *Data Files* table]

  **3.** [See following *Data Files* table]


  **Data Files**

  |Name                       | Observations | Variables | Reference |
  |---------------------------|--------------|-----------| ----------|
  |01. HIV/AIDS | 10,476 | 14 | https://apps.who.int/gho/data/node.main.ChildMortCTRY1002015?lang=en |
  |02. Diarrhoeal diseases | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH3?lang=en |
  |03. Measles | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH6?lang=en |
  |04. Meningitis/encephalitis | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH7?lang=en |
  |05. Malaria | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH8?lang=en |
  |06. Acute lower respiratory infections | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH9?lang=en |
  |07. Prematurity | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH10?lang=en |
  |08. Birth asphyxia and birth trauma | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH11?lang=en |
  |09. Sepsis and other infectious conditions of the newborn | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH12?lang=en |
  |10. Other communicable, perinatal and nutritional conditions | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH13?lang=en |
  |11. Congenital anomalies | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH15?lang=en |
  |12. Other noncommunicable diseases | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH16?lang=en |
  |13. Injuries | 10,476 | 14 | https://apps.who.int/gho/data/view.main.ghe1002015-CH17?lang=en |

**4.** **a.** The World Health Organization ([WHO](https://www.who.int/about)), "the United Nations agency that connects nations, partners and people to promote health, keep the world safe and serve the vulnerable – so everyone, everywhere can attain the highest level of health,"  compiled the data from sources like "civil registration and vital statistic systems (CRVS), health management information systems (HMIS) as well as specific country-wide monitoring systems," based on its description of how it compiles data for a similar issue of COVID-19 more specifically from an article about [Child mortality and causes of death](https://www.who.int/data/gho/data/themes/topics/topic-details/GHO/child-mortality-and-causes-of-death) on its website. The data is for years 2000 to 2017, and was last updated on November 27, 2018.

   **b.** According to [WHO's Funding page](https://www.who.int/about/funding):

   > WHO gets its funding from two main sources: Member States paying their assessed contributions (countries’ membership dues), and voluntary contributions from Member States and other partners.

   > **Assessed contributions (AC)** are a percentage of a country’s gross domestic product (the percentage is agreed by the United Nations General Assembly). Member States approve them every two years at the World Health Assembly. They cover less than 20% of the total budget.

   > The remainder of WHO’s financing is in the form of **voluntary contributions (VC)**, largely from Member States as well as from other United Nations organizations, intergovernmental organizations, philanthropic foundations, the private sector, and other sources. "

   Countries and researchers are likely to benefit from the data by using it to direct resources, and pharmaceutical companies are likely to make money off of it by knowing which drugs are most needed by the WHO and other health organizations.

   **c.** WHO operates on what it calls [Data Principles](https://www.who.int/data/principles). Principle 1.2 Ensure Transparency "requires that complete metadata about data sets should be released along with the data sets themselves and together with any explanatory notes that may be required to provide context on data provenance, scope and limitations, application and (re-)use, traceability and sharing."

   **d.** We obtained the data from the following page on the WHO website:

   https://apps.who.int/gho/data/node.main.CHILDHEALTHMORT?lang=en

   More specifically, the 13 datasets available at
   Global Health Observatory data repository
   By category > Mortality and global health estimates > Child mortality > Causes of child death > Number of deaths by cause
   Number of deaths by country
   HIV/AIDS
   Also available (13 items):

   https://apps.who.int/gho/data/node.main.ChildMortCTRY1002015?lang=en

## Expected Implications

There are two possible expected implications that will be able to help technologists and policymakers. Throughout our investigation we will be answers very tough questions. Some questions may lead us to a gruesome answers that we may not be ready for since we are focusing on child mortality however, these answers will lead to a safer world. Let’s say we found the answer to our first research question, regarding the highest causes of death in a specific country. By doing this, policymakers could better coordinate with international health organizations with funding and resources for certain diseases. For designers, they are able to create different visuals including diagrams, graphs and charts to spread awareness on the situation so people around the world will be educated, hopefully leading to help. Since technologists is such a broad occupation, they could, spread awareness and fix the problem with the use of coding and focus on more local, hard-hitting problems.

## Limitations

One of the biggest limitations that we will need to take into account, is the
inaccuracy of our data sets. It is very likely that for many of the countires,
their death tolls are not accurate. This can lead to skewed results. Another
limitation that we will need to consider is that our
data sets only go up to 2017. This means our data is old and we will be unable
to see how the trends have continued or discontinued in more recent years.
Lastly, the data is not specific. Factors such as race, gender, and economic
status are not included.    


## Findings

*Not for the project proposal; for final report only. Give answers to each of your research questions. (About 400 words.)*


## Discussion

*Not for the project proposal; for final report only. Discuss importance and/or implications of your findings (About 400 words.)*


## Conclusion

*Not for the project proposal; for final report only. Give the reader a summary point, the key point that you will like your audience to leave with. (About 400 words.)*


## Acknowledgements

*Is there anyone you would like to thank? A librarian who helped you with your research? A Teaching Assistant? A friend who helped you find your data? Say thank you in this section.*


## References

“Child Mortality.” UNICEF DATA, 6 Sept. 2022, \
data.unicef.org/topic/child-survival/under-five-mortality/. 

“Child Survival and the Sdgs.” UNICEF DATA, 6 Sept. 2022, \ 
data.unicef.org/topic/child-survival/child-survival-sdgs/. 

“Gho | by Category | Number of Deaths by Country - HIV/AIDS.” World Health Organization, World Health Organization, \ apps.who.int/gho/data/node.main.ChildMortCTRY1002015?lang=en. 

“How Who Is Funded.” World Health Organization, World Health Organization, \
www.who.int/about/funding. 

“Map a Historic Cholera Outbreak.” Learn ArcGIS, \
learn.arcgis.com/en/projects/map-a-historic-cholera-outbreak/#:~:text=through%20the%20air.-,Dr.,and%20waste%20systems%20in%20London. 

Nina. “Global, Regional and National Trends in under-5 Mortality between 1990 and 2019 with Scenario-Based Projections until 2030: A Systematic Analysis.” UNICEF DATA, 18 Apr. 2022, \
data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/. 

Nina. “Global, Regional and National Trends in under-5 Mortality between 1990 and 2019 with Scenario-Based Projections until 2030: A Systematic Analysis.” UNICEF DATA, 18 Apr. 2022, \
data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/. 

“Principles.” World Health Organization, World Health Organization, \
www.who.int/data/principles. 

## Appendix A: Questions

*Do you have questions for your TA or instructor? Include them here.*
