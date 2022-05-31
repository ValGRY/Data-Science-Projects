
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

## Select only the US language, we will be using only english language for sentiment analysis

## Plotting English language by top 10 location

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

As you can see from this WordCloud 'russia' 'dropped' 'bomb' the most used (repeated) words.

## Using TextBlob to get Subjectivity and Polarity

Geting subjectivity
Geting polarity

Computing negative and positive analysis
Sentiment Plot

## Concludion
As we can see, most of the people were negative about the war.
For the further research will be interesting to know how sentiment changes over time.

This or similar approach can be useful for business to get reaction on certain product or service from customer reviews.
