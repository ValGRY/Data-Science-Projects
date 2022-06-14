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
1. Transpose dataframe
2. Reset index
3. Assign the values of the first row to the column headings
4. Rename some columns
5. Droping first row

**Transforming the data**
1. Melting dataframe
2. Making sure that column data types are all correct
3. Checking unique values of London Borough column
4. Droping some Unnamed rows
5. Droping NaN

**Visualizing the data**
Making a line plot of Month against Average Price of one of the boroughs

<img src="https://user-images.githubusercontent.com/98930412/173454933-0bae8f38-746f-4264-9e48-f1b216786769.PNG" width="400">


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
After cleaning and analyzing data from the London Datastore and looking at the graphs, I came to the conclusion that the Housing prices have been growing from 1998 to 2018, except prices dropped around 2009.   
Based on average prices by each borough from 1998 to 2018, the North East borough is the most expensive.
