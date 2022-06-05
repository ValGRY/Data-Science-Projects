![Trisha-Map-900x593](https://user-images.githubusercontent.com/98930412/172030492-6d0c51e5-c933-43fc-ac67-f51e27db349c.png)

# Ukrain - russia war tweets sentiment

I am originally from Ukraine, beautiful country with a lot of nice people
We were living peaceful until russia attacked us.
Now the whole world know what is going on in Ukraine right now - full scale russian invasion!
I am going to get sentiment from Twitter to see people reaction on russian war with Ukraine.


## Sourcing and loading data

I downloaded data from Kaggle and save them in your working directory.

The data from Twitter about Ukraine - russia war can be found  [here](https://www.kaggle.com/datasets/bwandowando/ukraine-russian-crisis-twitter-dataset-1-2-m-rows?select=UkraineCombinedTweetsDeduped_MAR27_to_28.csv.gzip). 


## Checking each dataa sets

1. Looking at the data set to make sure I got data that I needed
2. Looking at the shape of data sets
3. Join data sets to create one data set

**Checking languages and countries**

1. Checking the language count
2. Lets see the location count
3. Importin visualisation libraries to start plotting

**Cleaning locations a little bit**

A lot of the locations were in different languages (e.g. '日本'), misspelled, or made up locations (e.g. 'Here, right now')

### Plotting top 20 languages that the most engaged in discussion of the war in Ukraine
![2](https://user-images.githubusercontent.com/98930412/172029925-1733ae0f-4030-4ad4-815a-b31d3a84e97e.png)

### Plotting top 20 locations that the most engaged in discussion of the war in Ukraine
![3](https://user-images.githubusercontent.com/98930412/172029926-ac85be73-e455-42c5-b615-8a00120b7d82.png)

## Select only the US language, we will be using only english language for sentiment analysis

## Plotting English language by top 10 location
![1](https://user-images.githubusercontent.com/98930412/171252893-a061ab2c-081e-4e20-89fd-1b79f00634d7.png)

## Cleaning data

**Celect only the rows that we need for the sentiment analysis**
1. Importing regular expression to clean text
2. Finding missing locati and filling them with "Location Unknown"
3. Removing URLs
4. Removing emojis, flags (iOS), transport, map symbols, pictographs
5. Removing text symbols
6. Making all the text lowercase

## Create wordcloud

**Removing stop words and all the words 3 or less letters only for WordCloud**
![5](https://user-images.githubusercontent.com/98930412/171252860-19568575-dbf9-48a8-b7cd-e68e82741939.png)

As you can see from this WordCloud 'russia' 'dropped' 'bomb' the most used (repeated) words.

## Using TextBlob to get Subjectivity and Polarity

1. Getting subjectivity
2. Getting polarity
3. Computing negative and positive analysis
4. Sentiment Plot
![4](https://user-images.githubusercontent.com/98930412/171252842-534743fd-4443-469d-ac41-8101750aba9a.png)


## Takeaways from this Ukrain - russia war tweets sentiment analysis
Ukraine russia war is the biggest war that is taking place in the center of Europe after WW2. With the internet working all over the world, media streaming the news right from the war zone, it was important to discover what kind of reaction are we seeing from the public all over the world. 
We found out that english speaking people ( in particular in the US) are the most engaged in this conversation. Because of the extraordinary bravery of Ukrainian people we see a lot of positive comments on twitter about the war, but as expected during the war - the leading is a negative sentiment in the conversation. 

**For the further research will be interesting to know how sentiment changes over time.**
**This or similar approach can be useful for business to get reaction on certain product or service from customer reviews.**
