![0](https://user-images.githubusercontent.com/98930412/173456584-780dcccf-ed7d-4104-8b04-784b08d6127d.jpg)
 
# London Housing

Main goal of this project was to find out which boroughs of London have seen the greatest increase in housing prices, on average, over the last two decades.
There are 32 boroughs within Greater London.    
Some of them are more desirable areas to live in, and the data will reflect that with a greater rise in housing prices.

## Data Science Pipeline

1. Sourcing and loading
2. Cleaning, transforming, and visualizing
3. Modeling
4. Evaluating and concluding

## Sourcing and Loading 
1. Importing Libraries
2. Loading the data

## Cleaning, transforming, and visualizing

**Exploring data**
1. Checking dataframe

**Cleaning the data**

1. Reset index
2. Assign the values of the first row to the column headings
3. Rename some columns
4. Droping first row

**Transforming the data**
1. Melting dataframe
2. Making sure that column data types are all correct
3. Changing data type of Month column
4. Checking unique values of London Borough column
5. Checking NaN

**Visualizing the data**    
Making a line plot of Month against Average Price of one of the boroughs,specifically 'Camden'

<img src="https://user-images.githubusercontent.com/98930412/173474396-4001d768-17e9-4e0b-974a-ba01841cf360.PNG" width="400">

**Creating 'Year' column by using lambda function**
1. look through the `Month` column
2. extract the year from each individual value in that column 
3. store that corresponding year as separate column
4. Grouping by Borough and Year, and getting yearly average price
5. Reseting index to get clean DF

<img src="https://user-images.githubusercontent.com/98930412/173470142-6216f5da-9961-49fd-91e6-73729024129f.PNG" width="400">

## Modeling
1. Creating a function that will calculate a ratio of house prices
2. Making empty dictionary to store new calculated ratio
3. Creating forloop to get ratio for all the boroughs
4. Creating nice clean DF

<img src="https://user-images.githubusercontent.com/98930412/173471817-b3923331-74ea-443d-a39c-f51cb6f15572.PNG" width="400">

**Ploting final results**

<img src="https://user-images.githubusercontent.com/98930412/173454957-deb56647-05ba-4c9c-9650-9c6e1bf3fe85.PNG" width="400">

## Conclusion  
After cleaning and analyzing data from the London Datastore and looking at the graphs, I came to the conclusion that the housing prices have been growing from 1995 to 2020, except prices dropped around 2009.   
Based on average prices by each borough from 1998 to 2018, the Hackney borough is the most expensive.
