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

- Our main question is what the biggest contributor to child mortality is. 
- This question is important, because duh
- TO adress this question we will analyze data collected from WHO

*Write a short abstract of three sentences. Your abstract should summarize your entire project, but only the very most important aspects. Here are two examples of how you might structure your abstract: (1) "Our main question is .... This question is important because .... To address the question, we will ...." and (2) "We are concerned with ..., because .... To address this concern, we plan to ...."*

Our groups main question that needs to be addressed is the curiosity on what  the biggest contributor to the child mortality rates globally is. This question is important because it will hopefully give everyone a better understanding on what is causing children to die, leading to a solution so families are no longer stripped of their loved ones. To address this question, we will look through each and every dataset relating to this problem, to identify the cause of this awful problem.

## Keywords

*3-5 keywords that summarize your project. (e.g., "Keywords: human physiology; bicycle exercise; elderly; power and heart rate times-series data")*

Children

Mortality Rates

Birth Complications

## Introduction

For this project we will be creating data visulizations to help answer our
research questions regarding child mortality. 

For our project we will be looking at child mortality data from different
countries between the years 2000 to 2017. We will compare the intersectionality
of age, country, and disease.

## Problem Domain

*Use short sub-sections to describe your topic and the setting (that is, the sociotechnical situation), including project framing, human values, direct and indirect stakeholders, possible harms and benefits. See the Design Brief, section B.3. Note: You must include three citations to related work (URLs to similar work, high quality articles from the popular press, reseach papers, etc. ). You may find it helpful to include a figure. (About 400 words.)*

- human values, people are dying that is not good
- read some articles first 

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

*Proposal only. Assuming you answer your research questions, briefly describe the expected or possible implications for technologists, designers, and policymakers. (About 150 words.)*

Expected implications from technologists may include a variety of conclusions drawn from different website and sources that had information on the topic but still had room for interpretation. For designers, when looking at a data set, because they have background knowledge with designing them they may mentally have already filled them out without throughly looking through it. For policymakers, since they obviously make policies, they may interpret them in a different way since their jobs revolve around only policy making.

- for technologists and designers they could focus more on local or
  hard-hitting disease 
- policymakers can better coordinate with internatinol health organizations
  with funding and resources for certain diseaes on a global scale 
## Limitations

*Proposal only. What limitations might you need to address? Briefly discuss. (About 150 words.)*
One of the biggests limitations is the inacuracy of our data sets. Some
conutries may have innacurate death tolls, leading to underestimates and skewed
results. Another limitation that we will need to take into account is that our
data sets only go up to 2017. This means our data is old and we will be unable
to see how the trends have continued or discontinued in more recent years.  

- economic situation, gender, race, etc 

## Findings

*Not for the project proposal; for final report only. Give answers to each of your research questions. (About 400 words.)*


## Discussion

*Not for the project proposal; for final report only. Discuss importance and/or implications of your findings (About 400 words.)*


## Conclusion

*Not for the project proposal; for final report only. Give the reader a summary point, the key point that you will like your audience to leave with. (About 400 words.)*


## Acknowledgements

*Is there anyone you would like to thank? A librarian who helped you with your research? A Teaching Assistant? A friend who helped you find your data? Say thank you in this section.*


## References

*Include your three or more research citations here. Also, include citations to your data files. Please use a standard citation style of your choice. See Citing Sources at the UW Library.*


## Appendix A: Questions

*Do you have questions for your TA or instructor? Include them here.*
