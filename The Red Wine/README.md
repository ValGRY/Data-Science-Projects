
# The Red Wine

The main goal is to see how regression analysis looks in Python and jupyter!

***I will use exploratory data analysis (EDA) and regression to predict alcohol levels in wine with a model that's as accurate as possible***.

I am going try a *univariate* analysis (one involving a single explanatory variable) as well as a *multivariate* one (involving multiple explanatory variables), and I will iterate together towards a decent model by the end of the project


Iam going to use the red wine dataset, wineQualityReds.csv. This dataset is available on Kaggle, [here](https://www.kaggle.com/piyushgoyal443/red-wine-dataset).


**1. Sourcing and loading** 
- Import relevant libraries
- Load the data 
- Exploring the data
- Choosing a dependent variable
 
**2. Cleaning, transforming, and visualizing**
- Visualizing correlations
  
  
**3. Modeling** 
- Train/Test split
- Making a Linear regression model: first model
- Making a Linear regression model: second model: Ordinary Least Squares (OLS) 
- Making a Linear regression model: third model: multiple linear regression
- Making a Linear regression model: fourth model: avoiding redundancy

**4. Evaluating and concluding** 
- Reflection 
- Which model was best?

## Sourcing and loading
1. Import relevant libraries 
2. Load the data
3. Exploring the data    
Check out its appearance (info, shape)
4. Choosing a dependent variable
**'Fixed Acidity'** looks like a good variable.
[Acidity](https://waterhouse.ucdavis.edu/whats-in-wine/fixed-acidity) is a fundamental property of wine, imparting sourness or tartness.
I will check the center and spread of its value.
Best way to do it is to make histogram of it to see the center and spread of its values.
Which variables are related interestingly to that dependent variable (Fixed Acidity)?
Using .corr() method on wine dataset to look at all the correlations between our variables.

## Cleaning, Transforming, and Visualizing

