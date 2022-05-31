
# Ukrain - russia war tweets sentiment
I am going to get sentiment from Twitter to see people reaction on russian war with Ukraine.

Importing pandas, numpy, os and csv.

## Sourcing and loading data
I downloaded data from Kaggle and save them in your working directory.
The data from Twitter abour Ukrain russia war can be found here.


## Checking each dataa sets
Looking at the data set to make sure I got data that I needed

Looking at the shape of data sets

Join data sets to create one data set


## Checking languages and countries
Checking the language count

Lets see the location count

Importin visualisation libraries to start plotting

Cleaning locations a little bit

Plotting Location and count of people who tweeted from that location
![3](https://user-images.githubusercontent.com/98930412/171252988-4b7518a7-5a1a-4d09-ad4c-2817d39a2a53.png)
![2](https://user-images.githubusercontent.com/98930412/171253023-18db6ddd-4a80-4e87-acba-fa9132960c69.png)

## Select only the US language, we will be using only english language for sentiment analysis

## Plotting English language by top 10 location
![1](https://user-images.githubusercontent.com/98930412/171252893-a061ab2c-081e-4e20-89fd-1b79f00634d7.png)

## Celect only the rows that we need for the sentiment analysis

## Cleaning data
Finding missing locati and filling them with "Location Unknown"

Cleaning text from: URLs, emojis, flags (iOS), transport, map symbols, pictographs, text symbols.
Using Regular Expressions.
Inporting regular expression to clean text

1. Removing URLs
2. Removing emojis, flags (iOS), transport, map symbols, pictographs
3. Removing text symbols
4. Making all the text lowercase


## Create wordcloud
Removing stop words and all the words 3 or less letters only for WordCloud
![5](https://user-images.githubusercontent.com/98930412/171252860-19568575-dbf9-48a8-b7cd-e68e82741939.png)

As you can see from this WordCloud 'russia' 'dropped' 'bomb' the most used (repeated) words.

## Using TextBlob to get Subjectivity and Polarity

Geting subjectivity
Geting polarity

Computing negative and positive analysis
Sentiment Plot
![4](https://user-images.githubusercontent.com/98930412/171252842-534743fd-4443-469d-ac41-8101750aba9a.png)


## Concludion
As we can see, most of the people were negative about the war.
For the further research will be interesting to know how sentiment changes over time.

This or similar approach can be useful for business to get reaction on certain product or service from customer reviews.
