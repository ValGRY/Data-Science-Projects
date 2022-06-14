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
Checking dataframe

**Cleaning the data**

1. Choosing only the rows that I am going to use
2. Reomove rows which is not London boroughs

**Transforming the data**
1. Rename some columns
2. Making sure that column data types are all correct
3. Changing data type of Month column
4. Checking unique values of London Borough column
5. Checking NaN

**Visualizing the data**    
Making a line plot of Month against Average Price of one of the boroughs,specifically 'Camden'

![1](https://user-images.githubusercontent.com/98930412/173627861-e2e20234-d972-4262-8ee1-376e51cc9714.PNG)

**Creating 'Year' column by using lambda function**
1. look through the `Month` column
2. Extractin the year from each individual value in that column 
3. Storing that corresponding year as separate column
4. Grouping by Borough and Year, and getting yearly average price
5. Reseting index to get clean DF

<img src="https://user-images.githubusercontent.com/98930412/173628401-f8a03b8e-566c-4783-91b6-88e873aeb949.PNG" width="400">


## Modeling
1. Creating a function that will calculate a ratio of house prices
2. Making empty dictionary to store new calculated ratio
3. Creating forloop to get ratio for all the boroughs
4. Transposing and reseting index
5. Creating nice clean DF

<img src="https://user-images.githubusercontent.com/98930412/173628927-4e87caab-c391-4e58-9b2a-ef5201181b2c.PNG" width="400">


**Ploting final results**

![2](https://user-images.githubusercontent.com/98930412/173629459-72a46c21-d0cf-481a-b229-eadb8a165ee4.PNG)


## Conclusion  
After cleaning and analyzing data from the London Datastore and looking at the graphs, I came to the conclusion that the housing prices have been growing from 1995 to 2020, except prices dropped around 2009.        
Based on average increas ratio of each borough from 1995 to 2020, the Hackney borough have the greatest increase in housing prices (around 8.66 times) over the last two decades.
