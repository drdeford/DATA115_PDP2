# Corned Beef vs. Pickles 

## Motivation
In graduate school, I had a friend from a fairly sheltered background who was convinced that corned beef and pickles could only be eaten together. That is, no one would ever eat either separately. This was shocking to me, since I didn't think I'd ever had them together but did enjoy them both on their own. When the initial pronouncement was handed down, we spent half of the night calling people all over the country trying to discover what collection of backgrounds would lead you to this particular culinary compulsion. As you might expect, the surveying process of "call who ever is currently saved in your phone" did not return particularly generalizable results. 

This issue then sat on the back burner for years until while helping a student in `DATA115` track down a dataset about food consumption by age, I stumbled across the <a href="https://www.cdc.gov/nchs/nhanes/index.htm">NHANES survey data</a> collected by the CDC, which seemed to provide a potential way forward...


## Data Sources
Every year, the National Center for Health Statistics performs a large survey of Americans health and consumption habits called the NHANES. They release anonymized responses to the large collection of questions and measurements that the gather data on. For this project I used the data from 2005. Specifcally, the <a href="https://wwwn.cdc.gov/nchs/nhanes/Search/DataPage.aspx?Component=Demographics&CycleBeginYear=2005"> Demographic Variables</a> and the <a href="https://wwwn.cdc.gov/nchs/nhanes/search/datapage.aspx?Component=Dietary&CycleBeginYear=2005"> raw reponses to the Food Frequency Questionaire</a>. This raw data is presented above. 

## Processing Steps
A significant amount of processing was necessary to actually analyze this dataset. To begin with, the raw data provided by the CDC is in a proprietary format for the SAS language, so the first step was to use the SAS viewer to export the data to a .csv to start the cleaning process. Then, I merged the demographic data with the relevant food consumption columns. In both cases, the given column labels were confusing so I replaced them with interpretable ones. There was also a great deal of excess data that I didn't need for the analysis, so I removed those columns from the dataset. There was demographic information on over 10k subjects but only about 6k filled out the food questionnaire, so I removed the non-participant rows from the data as well. 

Each column value was coded according to a chart given in the underlying data source. For example, the values in the `Pickles?` column represented the following pickle eating frequencies. 
<table>
  <tr><td>Data Value</td><td>Meaning</td> </tr>
  <tr><td>1</td><td> 	Never</td> </tr>
  <tr><td>2</td><td> 1-6 times per year</td> </tr>
  <tr><td>3</td><td> 	 	7-11 times per year</td> </tr>
  <tr><td>4</td><td> 	1 time per month</td> </tr>
  <tr><td>5</td><td>  	2-3 times per month</td> </tr>
  <tr><td>6</td><td> 1 time per week</td> </tr>
  <tr><td>7</td><td> 2 times per week </td> </tr>
  <tr><td>8</td><td> 	 	3-4 times per week </td> </tr>
  <tr><td>9</td><td> 	 5-6 times per week </td> </tr>
  <tr><td>10</td><td> 	 1 time per day </td> </tr>
  <tr><td>11</td><td> 	 	2 or more times per day </td> </tr>
  <tr><td>88</td><td> 	 Blank</td> </tr>
  <tr><td>99</td><td> 	 Error </td> </tr>
  </table>

Similar tables can be found at <a href = "https://wwwn.cdc.gov/nchs/nhanes/Search/DataPage.aspx?Component=Demographics&CycleBeginYear=2005"> this link</a> for the demographic columns. 
## Visualization

To begin with, I made a scatterplot of the various food frequency scores for the two food categories to see if there really were people who liked to eat both equally. This result shows that almost every possible category is filled, falsifying my classmate's hypothesis. 

<img src = "https://raw.githubusercontent.com/drdeford/DATA115_PDP2/main/cbp_scatter.png">

This plot obscures the number of participants who fall into each category (scatterplots are usually a poor choice for categorical data!) so we get a better visualization of the dataset using 

## Analysis

Having answered the initial question, I started to wonder if there were demographic features that distinguished the groups who either hated or liked both types of food. I began by separating the data into two sets: one for people who never ate either product and one for people who ate both at least once per week. The plots below show the histograms of ages of people in these two categories: 

<img src = "https://raw.githubusercontent.com/drdeford/DATA115_PDP2/main/haters_hist.png">

<img src = "https://raw.githubusercontent.com/drdeford/DATA115_PDP2/main/lovers_hist.png">

## Descriptions of Code and Materials
The raw data downloaded from the sources described above are uploaded in .csv form as 2005_food and 2005_demo. The processed data with better column names and only the relevant rows and columns is uploaded as processed_data and the notebook used to do the processing and make the plots is uploaded as cornedbeefpickles.ipynb. 

