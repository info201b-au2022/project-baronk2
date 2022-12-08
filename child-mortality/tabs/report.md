# *Child Mortality: Global Causes of Death* Report

## Code Name

"Rick And Child Morty"


## Project Title

Child Mortality: Global Causes of Death


## Authors

Jonathan To- jto9331@uw.edu

Hiba Abbas- hibaa3@uw.edu

Kevin Baron- baronk2@uw.edu

## Affiliation

University of Washington

The Information School

INFO-201B: Technical Foundations of Informatics

Professor Dave Hendry

TA Ishita Saxena


## Date

Autumn 2022


## Abstract

Our group's main concern that needs to be addressed relates to the biggest contributor causing global child mortality rates to increase. This concern is very important since it will give everyone a better understanding on what is causing infants to die, hopefully leading to a solution. With a solution, families will no longer be stripped of their loved ones. To address this concern, we plan on searching through the many different datasets given to us by the World Health Organization (WHO).

## Keywords

Infant Diseases

Mortality

Global

WHO


## Introduction

This project was created because we find child mortality to be a important
global issue. While much progress has been made over the years to reduce the
child mortality rate, there is still a ways to go. Take the death toll of
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
[sustainable development goal for neonatal mortality rate] target with 16 on
track, leaving 63 at risk of missing the target” and “As of 2019, 122 of 195
countries have achieved the SDG U5MR [Sustainable development goal for children
under five mortality rate] target, and 20 countries are on track to achieve the
target by 2030, while 53 will need to accelerate progress to meet the target by
2030.” [(Global, regional, and national trends in under five
mortality)](https://data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/). Analyzing data on child mortality rates can help countries to continue to stay on track to meet their 2030 sustainable goals, or get onto the right track.

### Human Values

When it comes to human values associated with this project, empathy and advancement come to mind.

### Stakeholders

The direct stakeholders for the results of this project would be government and UN officials. With more data on child mortality rates, governments and UN would be able to use it to fine tune their policies to bring those rates down. Different countries could focus on diseases most impactful for their region, and global organization can focus on the general hard-hitting diseases. The indirect stakeholders would be children, or to be even broader, families. Since the policies that governments or the UN or other global health organizations make could be affected by the findings of this project, the children’s healthcare will be strongly affected by those policies. This makes children/their families indirectly affected by this project.

### Potential Benefits and Harms

If governments, and the general public, can see which diseases are causing the most child deaths, they can be more effective in splitting resources and time to minimize their child mortality rates. This is a huge benefit as it can contribute to the overall sustainable development goals regarding child mortality and save lives! A potential downside to this is that the vast majority of resources and attention could become focused on only a couple of the more hard-hitting diseases, leaving children suffering from the lesser known diseases in the same or even worse situation as before.


## Research Questions

**1.** **What was the most recently recorded annual (2017) leading cause of death globally for children age 0-4 years old (Under 5 years old) in the dataset?**

  *Young children not surviving past the first five years of life is one of the saddest things in the world, and is not a problem specific to any one country, but is a major problem around the world.*

**2.** **Which countries have the highest numbers of deaths for this cause of death, age category, and year? Which countries have the lowest numbers of deaths for this cause of death, age category, and year?**

  *Where is this problem concentrated? Are there any patterns to where the leading cause of death is most likely to strike? Knowing where the problem is occurring could be key to solving the problem itself, just as [John Snow](https://learn.arcgis.com/en/projects/map-a-historic-cholera-outbreak/#:~:text=through%20the%20air.-,Dr.,and%20waste%20systems%20in%20London.) discovered by plotting out cholera deaths in London in 1854.*

**3.** **How does the world's most recently recorded annual (2017) leading cause of death compare to other global leading causes of death and to other global causes of death in general for this age category and year?**

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

## Findings

When looking at our four in-depth research questions, there is a great deal of data that needed to be searched through to answer them. Thankfully, with the power of teamwork and many hours of analyzing datasets, we were able to answer each question we came up with.

To start things off, let’s look at our first question, “What was the most recently recorded leading cause of death globally for children ages 0-4 years old (Under 5 years old) in the dataset?”. In this case, Prematurity caused the most amount of deaths in children under 5. This answer would help provide stakeholders such as parents, healthcare providers and the Government an idea on what disease they need to prioritize a cure for.

Moving on to the second question, “Which countries have the highest numbers of deaths for this cause of death and age category? Which countries have the lowest numbers of deaths for this cause of death and age category?”. By finding the answer to the countries with the least number of deaths, which in this case was the Crook Islands, Monaco, Niue, and San Marino with 0 deaths. The Government and healthcare can see what the 0 death countries are doing differently compared to countries with high numbers of death in prematurity such as *India with 284,000 deaths*, *Pakistan with 91,000 deaths* and *Nigeria with 84,000 deaths* and implement changes to lower every country death toll.

For the third question, “How does the world's most recently recorded leading cause of death compare to other global leading causes of death and to other global causes of death in general for this age category?”. In this case, Acute lower respiratory infection causing 800,000 deaths and Birth asphyxia and birth trauma with 670,000 deaths were the second and third leaders of child mortality in recent years. Having this answer will give researchers and healthcare providers an idea on what diseases they need to find cures for or make the survival rate higher. Having this information can also lead to researchers to identify different patterns between each disease to see if there is a similarity that they can knock out at the same time.

Finally, answering the fourth question, “For all recorded years in the dataset, which country has the most child deaths from any listed cause for ages 0-4 years old? Which country had the fewest child deaths for the same period and set of causes?”, will give stakeholders a better idea on what countries they need to support heavily in healthcare to decrease their numbers to make all countries similar in low rates of death. Through the dataset provided by WHO, we were able to see that India was the country with the highest death toll with **30,556,631 deaths** in children under 5 and Niue was the country with the fewest deaths with only 0 deaths.

In summary, all these findings from the dataset are crucial data that needs to be referenced back to when making plans on lowering the total death count from diseases in all countries around the world.


## Discussion

When looking at the importance of possible expected implications that will help technologists and policymakers, we have found two we want to highlight. Throughout our investigation we will need to answer very tough questions. Some questions will lead us to gruesome answers that might make our stomach churn however, these answers will point us to a **safer world**, with child mortality rates at an all-time low.

Let’s say we found the answer to our first research question, regarding the highest causes of death in a specific country. Now let’s say, for example it was maybe “HIV/AIDS” causing the most deaths. By finding out the main cause of death, policymakers could better coordinate with international health organizations with funding and resources for this certain disease. This could drastically decrease deaths and make a safer world in general.

Another reason why our findings will be important can be seen through our fourth question, asking about the country with the most deaths and which country has the least number of deaths. This is an important question to ask, since possible solutions can be extracted from the country with the least amount of deaths that can be __translated__ and used in other countries with higher death counts.

In general, when looking at the expected implications of all the findings above, designers can create different visuals including diagrams, graphs, and charts to spread awareness on the situation so people around the world will be educated, hopefully leading to a solution. In addition, technologists is such a broad occupation, meaning they could spread awareness and fix the problem with the use of coding, UX/UI design and focus on more local, hard-hitting problems based on the findings in the dataset.

On the other hand, when looking at implications, one most look at the limitations as well. One of the biggest limitations that we will need to take into account, is the inaccuracy of our data sets. It is very likely that for many of the countries, their death tolls are not accurate. This can lead to skewed results. Another limitation that we will need to consider is that our data sets only go up to 2017. This means our data is old and we will be unable to see how the trends have continued or discontinued in more recent years. Lastly, the data is not specific. Factors such as race, gender, and economic status are not included.


## Conclusion

Child mortality is the opposite of a light topic, it is a very sensitive subject for many and negatively effects the world in numerous ways. However, by creating a report and sharing information on the different causes of morality in children, stakeholders such as the government, healthcare providers, and parents can strive to decrease this rate.

When looking at the causes of child mortality, they mostly relate back to different diseases including, HIV/AIDS, diarrheal diseases, measles, meningitis, malaria, acute lower respiratory infection, prematurity, birth asphyxia and birth trauma, sepsis, and many more. Obviously, the number of deaths in each country will differ with each disease but for the most part, through our findings, we were able to narrow down the main contributor to the child death rate. This contributor is the acute lower respiratory infection which has taken over 22 million lives this past 30 years in children ages 0-4. **22 million lives in 30 years** is no joke. That is about 666,666 deaths per year just from **ONE** disease.

From this data, it is now obvious how crucial it is to pay attention to the diseases and try to find cures or even remedies on how to recover from these illnesses. However, it isn’t as easy as it seems. Finding cures depend on a country’s income, if they are wealthy and have good healthcare, they obviously have an advantage compared to lower income countries. This can be seen through the data set and our findings. Countries such as the United States has plenty of deaths in children but since they have such good healthcare, their ratio of deaths to population is far less than a low-income country. A solution that could help resolve this problem, is providing good health care globally so not one country is suffering by itself.

All in all, child mortality is an issue everyone should be made aware about. Through our report I hope that you have gained new knowledge on what causes these poor children to die, so you can spread the word and think of possible solutions on how to combat these brutal diseases. Again, one key point we want to illiterate is that everyone around the globe should be working together to combat these diseases since child mortality is causing problems in all families worldwide. We are all stronger together!


## Acknowledgements

We would like to thank our Info 201 B professor, Dr. Dave Hendry, for equipping us with the tools and knowledge to access data sources, ask questions about them, and format Markdown reports such as this one.

We would also like to thank our Teaching Assistant Ishita Saxena for helping Professor Hendry to equip us with these tools and knowledge by being hands-on with us in our Tuesday lab section.


## References

Works Cited

“About WHO.” World Health Organization, World Health Organization, https://www.who.int/about.

“Child Mortality and Causes of Death.” World Health Organization, World Health Organization, https://www.who.int/data/gho/data/themes/topics/topic-details/GHO/child-mortality-and-causes-of-death.

“Child Mortality.” UNICEF DATA, 6 Sept. 2022, https://data.unicef.org/topic/child-survival/under-five-mortality/.

“Child Survival and the Sdgs.” UNICEF DATA, 6 Sept. 2022, https://data.unicef.org/topic/child-survival/child-survival-sdgs/.

“Gho | by Category | Number of Deaths by Country - Acute Lower Respiratory Infections.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH9?lang=en.

“Gho | by Category | Number of Deaths by Country - Birth Asphyxia and Birth Trauma.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH11?lang=en.

“Gho | by Category | Number of Deaths by Country - Congenital Anomalies.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH15?lang=en.

“Gho | by Category | Number of Deaths by Country - Diarrhoeal Diseases.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH3?lang=en.

“Gho | by Category | Number of Deaths by Country - HIV/AIDS.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/node.main.ChildMortCTRY1002015?lang=en.

“Gho | by Category | Number of Deaths by Country - Injuries.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH17?lang=en.

“Gho | by Category | Number of Deaths by Country - Malaria.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH8?lang=en.

“Gho | by Category | Number of Deaths by Country - Measles.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH6?lang=en.

“Gho | by Category | Number of Deaths by Country - Meningitis/Encephalitis.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH7?lang=en.

“Gho | by Category | Number of Deaths by Country - Other Communicable, Perinatal and Nutritional Conditions.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH13?lang=en.

“Gho | by Category | Number of Deaths by Country - Other Noncommunicable Diseases.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH16?lang=en.

“Gho | by Category | Number of Deaths by Country - Prematurity.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH10?lang=en.

“Gho | by Category | Number of Deaths by Country - Sepsis and Other Infectious Conditions of the Newborn.” World Health Organization, World Health Organization, https://apps.who.int/gho/data/view.main.ghe1002015-CH12?lang=en.

“How Who Is Funded.” World Health Organization, World Health Organization, https://www.who.int/about/funding.
“Map a Historic Cholera Outbreak.” Learn ArcGIS, https://learn.arcgis.com/en/projects/map-a-historic-cholera-outbreak/#:~:text=through%20the%20air.-,Dr.,and%20waste%20systems%20in%20London.

Nina. “Global, Regional and National Trends in under-5 Mortality between 1990 and 2019 with Scenario-Based Projections until 2030: A Systematic Analysis.” UNICEF DATA, 18 Apr. 2022, https://data.unicef.org/resources/global-regional-and-national-trends-in-under-5-mortality-between-1990-and-2019/.

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

“Preterm Birth.” World Health Organization, World Health Organization, 14 Nov. 2022, https://www.who.int/news-room/fact-sheets/detail/preterm-birth.

“Principles.” World Health Organization, World Health Organization, https://www.who.int/data/principles.

“United Nations Millennium Development Goals.” United Nations, United Nations, https://www.un.org/millenniumgoals/childhealth.shtml.
