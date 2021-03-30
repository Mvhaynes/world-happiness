# world-happiness

## Background

This script combines data on suicide statistics and world happiness reports that is normalized across each country to provide an accurate overview of the overall wellbeing of the citizens of each country. The goal of this project was to clean up the datasets and load them into a relational database where the tables could be queried to discover insights about the connection between suicide rates and various factors contributing to overall citizen wellbeing. 


## Transforming the data:

The WHO Suicide Dataset is a CSV file that contains the number of suicides per year for various countries. The data is separated by sex and age and includes the respective populations for those categories. For the purposes of this project, we wanted to combine the demographics to result in only the number of suicides in each country for that year. 

To combine the data, we first dropped columns containing null values - note that null values do not necessarily mean that number of suicides for that year was 0, but that data may not have been collected for that year. The demographic data was then combined using the aggregate function to create a final table containing the following variables: 
* Country
* Year
* Number of suicides
* Total population 

---

The World Happiness Dataset is a CSV file that contains data for each country for various years and includes the following measures:
* Life Ladder (Happiness score)
* Log GDP per capita 
* Social support 
* Healthy life expectancy at birth
* Freedom to make life choices 
* Generosity 
* Perceptions of corruption 

You can read about the variable definitions [here](https://s3.amazonaws.com/happiness-report/2019/WHR19_Ch2A_Appendix1.pdf).

To transform this data, we eliminated the 'Generosity' and 'Perceptions of corruption' columns to make the data more concise, then renamed the columns to allow for simpler querying. Because the datasets contain data for different years, we opted not to eliminate certain years because the data may still be useful in providing a general overview for each country. 

## Loading 

After transforming the data, the tables were loaded into a PostGreSQL database. To confirm that the data was successfully loaded, we created a connection to the database and ran the engine to query the tables. 

## Limitations of the data 

One of the limitations is the lack of data for certain years in both datasets. Some countries have very recent data, whereas other countries have few datapoints or only older data. Because of this, we can't pick a timeframe without excluding many countries or losing potentially useful data. 


## Tools used
* PostGreSQL 
* Pandas 

## Resources
* [World Happiness Report](https://worldhappiness.report/ed/2019/)
* [WHO Suicide Statistics](https://www.kaggle.com/szamil/who-suicide-statistics)
