![0](https://user-images.githubusercontent.com/98930412/172071101-c6dd81b1-d196-4dfc-9f93-7bbe27c9fb43.png)

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
![1](https://user-images.githubusercontent.com/98930412/172061262-5b49ef36-aae3-4092-a2a6-3552b939ddc5.png)

Which variables are related interestingly to that dependent variable (Fixed Acidity)?
Using .corr() method on wine dataset to look at all the correlations between our variables.

## Cleaning, Transforming, and Visualizing
1. Visualizing correlations
I have chosen 'Fixed Acidity' as dependent variable for regression analysis. I am going to plot the pairwise relationships in the dataset, to check out how our variables relate to one another by **using the .pairplot() Seaborn method.**
![1](https://user-images.githubusercontent.com/98930412/172061214-2641baae-4917-4921-add8-db07b2eda8a3.png)

**Applying the .heatmap() Seaborn method.**
![3](https://user-images.githubusercontent.com/98930412/172061442-61807999-59a5-46b4-a52d-384a77938520.png)

I can see relatively strong correlation between the density and fixed acidity.
**Using the .scatterplot() Seaborn method to visualise nsity and fixed acidity.**
![4](https://user-images.githubusercontent.com/98930412/172061630-7ea15b1d-327b-4987-b9b4-26a9ce7d8b6f.png)

I can see a positive correlation and some outliers.

**Using the .regplot() Seaborn method**
![5](https://user-images.githubusercontent.com/98930412/172062177-8e2ffb4a-1b5e-4bcd-bd0c-7dcd74ee3430.png)

I can see some points that deviate from the line but the line still matches the overall shape of the data pretty good.

## Modeling

**Train/Test Split**
Subsetting our data into our dependent and independent variables
Split the data by useing the train_test_split() sklearn function.
The test size = 75% of the data, and test size = 25%.

**Making a Linear Regression model (first model)**
Creating linear regression model by useing linear_model.LinearRegression()
Training the model on our test data.
Evaluating success of the model by looking at R-Squared coefficient score
Score of 46.8% means that I have a lot of work to do.
Ploting the predictions against the actual result. Use scatter()
![6](https://user-images.githubusercontent.com/98930412/172064115-75e1b3e2-9b9d-4979-91db-6334741eaa26.png)

**Making a Linear Regression model (second model): Ordinary Least Squares (OLS)**
Creating X and y
For Ordinary Least Squares Regression I nedd to reassign X the value of adding a constant to it.
train_test_split()
Creating and fitting the model 2
Evaluate the model with .summary()
R-Squared coefficient score is 46.9%
Let's predict dependent variable y by using .predict()
Building a scatterplot
![7](https://user-images.githubusercontent.com/98930412/172064960-3009fc9f-3074-4749-8d6e-1533094f252f.png)

**Making a Linear Regression model (third model): multiple linear regression**
Creating X and y (including more columns for X)
Create constants for X
train_test_split()
Creating and fitting the model 3
Evaluate the model with .summary()
The R-Squared score shows a big improvement 87.3%
Let's predict dependent variable y by using .predict()
Building a scatterplot
![8](https://user-images.githubusercontent.com/98930412/172067643-c4b65118-3569-4137-9cc8-5c83f04dbd41.png)
Measuring the accuracy of a regression model by defining a function to check the RMSE (Root Mean Squared Error) (finding the average difference between predictions and actual values)
RMSE is about 0.6 which means that I am on average, about 0.6 of a unit of fixed acidity away from the correct answer.

 **Making a Linear Regression model (fourth model): avoiding redundancy**
Creating X and y (using another remaining six columns for X)
Create constants for X
train_test_split()
Creating and fitting the model 4
Evaluate the model with .summary()
R-Squared coefficient score is 75.2%
Reduction of R-squared score to 75.2% indicates that the removed columns were important.

## Conclusions

While our most predictively powerful model was rModel3, this model had explanatory variables that were correlated with one another, which made some redundancy. Our most elegant and economical model was rModel4 - it used just a few predictors to get a good result.
