# world-happiness

##background

Resources: -WHO Suicide Statistics by country (CSV)-World Happiness Report by country (XLS)Proposal:

For this project our group plans to join the WHO suicide statistics report with the world happiness report data for the most recent year reported and join the tables based on country. 

The measures we plan to keep in the data set are: 
-Happiness score and overall rank
-Health-Life expectancy
-GDP per capita
-Social Support
-Freedom

### Process

E -
In this step on the process we used Pandas to load the data, csv files, that we found for our project. 

T - 
After loading the data we cleaned it up by creating a list variable and appending the columns we wanted to use to the list.
Once this was completed we changed the names of the columns to something more simple and something that sql would recognize.
We decided that we didn't need (n/a) data so we used the dropna function to get rid of this information.
After which we sumed up all of the suciceds and population by year and created a dataframe that held the information.
At this point we went into Postgres sql and created tables that would hold the data that we cleaned 

L -
Once this was done we went back into pandas and ran the engine and appended the information to the tables created in sql


## Tools used
Postgres Sql and Pandas 
## Resources
[World Happiness Report](https://worldhappiness.report/ed/2019/)
[WHO Suicide Statistics](https://www.kaggle.com/szamil/who-suicide-statistics)
