
# Techno Industries Inc.

Techno Industries Inc. a leader of manufacturing different equipment components, has observed that market demand has been strong over the past few years with growth averaging 6.9% Year-on-Year. As a Fortune 500 corporation, this good growth has led the company to expand their operation and distribution centers across 48 states in the US. With very good growth rates and lower barriers to entry due to government regulation, this has attracted a lot of new companies that increase competition drastically. New businesses are offering better and optimized delivery for components, and some companies have started using machine learning and artificial intelligence to create better technology and lower the production costs for existing components. After Techno Industries Inc. lost several top long-term customers that brought 11% of the company's revenue, management decided to ceate short-term plan. If this problem continues, the Techno Industries Inc. market share and potential customer-base will be at risk, also it will indicate a potential risk in the company’s ability to make dividend payments to shareholders if losses are too big. Techno Industries Inc. currently includes 6 primary industries and 11 different types of components. Management needs an immediate short-term action plan to address the loss of customers and protect the existing market share.

**The main goal of this project is to determine in which type of components Techno Industries Inc. should invest**

What number of customers in each segment purchase this specific component?
What is the revenue breakdown per industry?
Is there any seasonality in industry sales?
What is the revenue breakdown per product?
If ther is seasonality in industry, wich product in that industry has seasonality?
What is the geographic distribution of each segment?
Which segment yields the highest average profit margin?
Distribution of industries among the orders?
Which product has the the highest profit?
Which product has the lowest profit?
Which product has the highest growth potential?


# Data Science Pipeline

Sourcing and loading
Cleaning, transforming, and visualizing
Modeling
Evaluating and concluding

# Sourcing and Loading

Importing Libraries
Loading data and exploring dataset.

# Cleaning, transforming, and visualizing

Zip Code 88013 is belongs to Las Cruces, New Mexico.
I will fill missing states with New Mexico.

# Exploratory Data Analysis
## Distribution of industries among the orders?

<img src="https://user-images.githubusercontent.com/98930412/180494031-4dff2f85-8ffb-4777-a53b-8598a9b11243.png" width="700">

I can see that about 50% of all the industries belongs to the Aerospace and Medical industries.
But the biggest chunk belongs to the Aerospace industry. On the other end Transportation has the smallest chunk among all industries that Techno Industries Inc. workin in.

**Let's check distribution of components among the orders.**

<img src="https://user-images.githubusercontent.com/98930412/180494613-40e513be-4e8c-4066-9243-282b06dd57e1.png" width="700">

Actuators and Fuses the biggest sellers among all the components in all the industry following by Circuit breakers and Light Emitting Diode (LED)
Microcontrollers and Wiring components has the list of orders.

# What number of customers in each segment that purchased this specific component?

plt.style.use('fivethirtyeight')

color = ['indianred','maroon','y','g','tan','royalblue', 'm', 'slateblue','orange', 'gray', 'indigo']
ax = df.groupby(['Business Type', 'Product'])['Customer ID'].count().unstack().plot.bar(legend=True,color = color,
                                                                                     figsize=(22,10), width=0.8)

for bars in ax.containers:
    ax.bar_label(bars, padding=3, rotation=90)

plt.yticks(size = 20)
plt.xticks(size = 20)
plt.xticks(rotation = 0) 

plt.legend(fontsize=17)

plt.xlabel('Industries', size = 25, weight='bold')
plt.ylabel('Count Of Orders', size = 25, weight='bold')
plt.title('Number Of Customers Per Industry', size = 28, weight='bold');
plt.show()

As I can see the biggest number of customers purchased Light Emitting Diode (LED) from Aerospace industry.
Be even more precise, almost all the orders for Light Emitting Diode (LED) came through Aerospace industry.
Also some of the industries has extremely low or even zero number of ordered for some components, for example Transportation industry has zero Switches Looks like Microcontrollers has the smallest number of orders.

What is the revenue breakdown per industry?
plt.style.use('seaborn-white')

plt.figure(figsize=(10,6))

color = ['indianred','maroon','g','royalblue', 'slateblue','orange']
ax = df.groupby('Business Type')['Revenue (total)'].sum().sort_values(ascending=False).plot(kind = 'bar',
                                                                                       color = color ,edgecolor='blue')

for bars in ax.containers:
    ax.bar_label(bars)

plt.xlabel('Industries', size = 15, weight='bold')
plt.ylabel('Revenue in Millions', size = 15, weight='bold')
plt.title('Revenue Per Industry', size = 22, weight='bold');

So far Aerospace have been the industry with the biggest number of orders and as I can see the Aerospace brings the most revenue than the other industries all together.

What is the revenue breakdown per product?
plt.style.use('seaborn-white')

plt.figure(figsize=(15,6))

color = ['indianred','maroon','g','royalblue', 'slateblue','orange']
ax = df.groupby('Product')['Revenue (total)'].sum().sort_values(ascending=False).plot(kind = 'bar',
                                                                                       color = color ,edgecolor='blue')

for bars in ax.containers:
    ax.bar_label(bars)

plt.xlabel('Industries', size = 15, weight='bold')
plt.ylabel('Revenue in Millions', size = 15, weight='bold')
plt.title('Revenue Per Industry', size = 22, weight='bold');

Microcontrollers brings the smallest revenue, with the second lowest revenue form Wiring components
The biggest revenue comes from Switches

Is there any seasonality in industry sales?
Creating column 'Month' to get only month names, for seasonality plot.

df['Month'] = pd.to_datetime(df['Date']).dt.month_name()
plt.style.use('fivethirtyeight')


y = df['Quantity']
x = df['Month']
hue = df['Business Type']

plt.figure(figsize=(18,8))
ax = sns.lineplot(x = x, y = y, data = df, hue = hue)

plt.yticks(size = 16)
plt.xticks(size = 16)
plt.xlabel('Month', size = 30, weight = 'bold')
plt.ylabel('Quantity', size = 30, weight = 'bold')
plt.title('Seasonality In Industries', size = 30, weight='bold');

Aerospace industry has sign of seasonality.

Let's check which product Aerospace industry has seasonality.
I am going to separate Aerospace industry from other industries.

df_aero = df.loc[df['Business Type'] == "Aerospace"]
df_aero.head().T
2	4	5	9	13
Date	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00
Customer ID	10217	10041	10024	10034	10058
Product	Fuse	Light Emitting Diode (LED)	Laser diode	Laser diode	Light Emitting Diode (LED)
State	Maine	New Jersey	New Jersey	New York	New York
Zip Code	4250	7023	7428	11978	13340
Business Type	Aerospace	Aerospace	Aerospace	Aerospace	Aerospace
Cost (per unit)	2.215	1.725	1.06	1.06	1.725
Price (per unit)	2.4	1.85	1.5	1.83	2.4
Quantity	11	510	12	2	1043
Revenue (total)	26.4	943.5	18.15	3.66	2504.32008
Cost (total)	24.365	879.75	12.826	2.12	1799.980057
Month	January	January	January	January	January
plt.style.use('fivethirtyeight')


y = df['Quantity']
x = df['Month']
hue = df['Product']

plt.figure(figsize=(18,8))
ax = sns.lineplot(x = x, y = y, data = df, hue = hue)

plt.yticks(size = 16)
plt.xticks(size = 16)
plt.xlabel('Month', size = 30, weight = 'bold')
plt.ylabel('Quantity', size = 30, weight = 'bold')
plt.title('Seasonality In Industries', size = 30, weight='bold');

Laser diode has seasonality and Switches has some signs of seasonality.
I can assume that there are the best seasons to do testing or launching of new developed product, and they may need new components to fix something or build something new before next testing or launching season.

Which segment yields the highest average profit margin?
I am going to add calculated field 'Net Profit Margin' so I can plot average profit margin.

df['Net Profit Margin'] = (df['Revenue (total)'] - df['Cost (total)']) / df['Revenue (total)']
df.head().T
0	1	2	3	4
Date	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00
Customer ID	10318	10173	10217	10021	10041
Product	LCD, LED, OLED displays	Actuators	Fuse	Resistors	Light Emitting Diode (LED)
State	Massachusetts	New Hampshire	Maine	Maine	New Jersey
Zip Code	2109	3084	4250	4544	7023
Business Type	Industrial	Industrial	Aerospace	Agriculture	Aerospace
Cost (per unit)	2.06	0.55	2.215	1.575	1.725
Price (per unit)	8.2	4.62	2.4	4.79	1.85
Quantity	33	22	11	479	510
Revenue (total)	270.6	101.64	26.4	2294.41	943.5
Cost (total)	67.98	12.1	24.365	754.425	879.75
Month	January	January	January	January	January
Net Profit Margin	0.74878	0.880952	0.077083	0.67119	0.067568
plt.style.use('fivethirtyeight')

total = df['Net Profit Margin'].mean()

color = ['orange','maroon','y','g','royalblue', 'slateblue']
ax =  df.groupby('Business Type')['Net Profit Margin'].mean().sort_values().plot.bar(color = color,
                                                                                     figsize = (16,8), width = 0.8)


for h in ax.patches:
    height = h.get_height()
    ax.text(h.get_x() + h.get_width() / 2, height + 0.01,'{:1.2f}'.format((height/total)*100) + '%',
            ha="center",size=17)


plt.yticks(size = 20)
plt.xticks(size = 20)
plt.xticks(rotation = 0) 

plt.xlabel('Industries', size = 25, weight='bold')
plt.ylabel('Percentage', size = 25, weight='bold')
plt.title('Average Net Profit Margin Percentage Per Industry', size = 27,weight = 'bold')
plt.show();

Even though Aerospace industry has the biggest number of orders and brings the biggest revenue among all the industries that company working in, it has the lowest average net profit margin.

The Medical industry has the biggest percentage of average net profit margin, with pretty close second place Industrial segment

Which products are driving the highest and the lowest profit?
plt.style.use('fivethirtyeight')
total = df['Net Profit Margin'].mean()

dd = df.groupby('Product')['Net Profit Margin'].mean().sort_values().plot.bar(figsize = (18,10),color = '#66aa99',
                                                                          width = 0.8, edgecolor='blue')

for h in dd.patches:
    height = h.get_height()
    dd.text(h.get_x() + h.get_width() / 2, height + 0.01,'{:1.2f}'.format((height/total)*100) + '%',
            ha="center",size=17)


plt.yticks(size = 18)
plt.xticks(size = 18)

plt.ylabel('Percentage', size = 29, weight='bold')
plt.xlabel('Product', size = 29, weight='bold')
plt.title('Average Net Profit Margin Percentage Per Component', size = 30,weight = 'bold')
plt.show();

As we already know Actuators were second biggest component in terms of orders and it brings the most average profitability.
On the other side Microcontrollers that has the smallest number of orders bring the least average profitability, only 3.26%.

What is the geographic distribution of each segment?
plt.style.use('seaborn-white')

color = ['indianred','maroon','y','g','tan','royalblue', 'm', 'slateblue','orange', 'gray', 'indigo']
ax = df.groupby('State')['Net Profit Margin'].sum().sort_values(ascending = False).plot.barh(color = color,
                                                                                     figsize=(20,18), width=0.8)

for bars in ax.containers:
    ax.bar_label(bars, padding=3)

plt.yticks(size = 20)
plt.xticks(size = 20)

plt.xlabel('Industries', size = 30, weight='bold')
plt.ylabel('Net Profit Margin', size = 30, weight='bold')
plt.title('Net Profit Margin By State', size = 33, weight='bold');
plt.show()

As we can see California, New York, Pennsylvania and Texas brings the bigest Net Profit Margin. On the other end North Dakota, Delaware and South Dakota brings the list of Net Profit Margin.

Which product has the highest growth potential?
# plt.style.use('bmh')

plt.style.use('fivethirtyeight')

a = df.groupby(['Product'])['Price (per unit)'].mean()
b = df.groupby(['Product'])['Net Profit Margin'].sum()

fig, ax1 = plt.subplots(figsize = (25,9))
plt.grid(axis = 'x', color = 'r', alpha = 0.8, linewidth = 2)

ax1.plot(a, color = 'b',linestyle='dashed', marker='o', markersize=30, markerfacecolor='b')

ax2 = ax1.twinx()
ax2.plot(b,color = 'g', linestyle='dashed', marker='o', markersize=30, markerfacecolor='g')

ax1.set_ylabel('Price Per Unit', color = 'b', size = 29, weight='bold')
ax2.set_ylabel('Net Profit Margin', color = 'g', size = 29, weight='bold')
plt.title('Net Profit Margin VS Price Per Unit', size = 30,weight = 'bold')
plt.show();

As we can see 'Thermostat', 'Wiring components' and 'Microcontrollers' has the highest cost per unit and the lowest net profit margin among all the components.
Lets take a closer look at the 'Microcontrollers' this component has the biggest cost of production and the lowest net profit margin among all the components, only 3.26% as we know from previous plot.

Actuators and Fuse has the lowest cost of unit and the biggest net profit margin.

Modeling
Encoding Categories

df.Product = LabelEncoder().fit_transform(df.Product)
df.State = LabelEncoder().fit_transform(df.State)
df['Business Type'] = LabelEncoder().fit_transform(df['Business Type'])
df.head().T
0	1	2	3	4
Date	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00	2015-01-01 00:00:00
Customer ID	10318	10173	10217	10021	10041
Product	3	0	2	7	5
State	18	26	16	16	27
Zip Code	2109	3084	4250	4544	7023
Business Type	2	2	0	1	0
Cost (per unit)	2.06	0.55	2.215	1.575	1.725
Price (per unit)	8.2	4.62	2.4	4.79	1.85
Quantity	33	22	11	479	510
Revenue (total)	270.6	101.64	26.4	2294.41	943.5
Cost (total)	67.98	12.1	24.365	754.425	879.75
Month	January	January	January	January	January
Net Profit Margin	0.74878	0.880952	0.077083	0.67119	0.067568
sns.heatmap(df.corr(), yticklabels=True, annot=True, cmap="YlGnBu")
plt.gcf().set_size_inches(11, 7)

df_d = df.drop(['Customer ID', 'Date','Zip Code', 'State', 'Month', 'Net Profit Margin'], axis=1)
for col in df_d.columns:
    print(col)
Product
Business Type
Cost (per unit)
Price (per unit)
Quantity
Revenue (total)
Cost (total)
from sklearn.model_selection import GridSearchCV
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report
from sklearn.ensemble import RandomForestClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, confusion_matrix
from sklearn.metrics import f1_score
import warnings
warnings.filterwarnings("ignore")
df_d.dtypes
Product               int32
Business Type         int32
Cost (per unit)     float64
Price (per unit)    float64
Quantity              int32
Revenue (total)     float64
Cost (total)        float64
dtype: object
Logistic Regression
X = df_d.drop(columns = ['Product'])
y = df_d['Product']

x_train, x_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

LR_mod = LogisticRegression(max_iter = 1000)

grid = {'C':[0.001, 0.01, 0.1, 1, 10, 100, 1000]}

LR_GS = GridSearchCV(LR_mod, grid, cv = None, n_jobs = -1)

LR_GS.fit(x_train,y_train)
GridSearchCV(estimator=LogisticRegression(max_iter=1000), n_jobs=-1,
             param_grid={'C': [0.001, 0.01, 0.1, 1, 10, 100, 1000]})
print("tuned hpyerparameters :(best parameters) ",LR_GS.best_params_)

print("Accuracy :",LR_GS.best_score_)
tuned hpyerparameters :(best parameters)  {'C': 10}
Accuracy : 0.9111281259329959
Random Forest Classifier
# n_jobs=-1, to utilise all processors!
# cv=None, to use the default 5-fold cross validation.
# verbose=2, to display the score is also displayed.

X = df_d.drop(columns = ['Product'])
y = df_d['Product']

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

RF_mod = RandomForestClassifier(n_estimators=100, min_samples_split = 4,max_depth = 40, n_jobs=-1)

RF_mod.fit(X_train, y_train)

predict = RF_mod.predict(X_test)
print('Random Forest: Accuracy=%.3f' % (accuracy_score(y_test, predict)))
print('Random Forest: f1-score=%.3f' % (f1_score(y_test, predict, average='weighted')))
print(f'Train Accuracy: {RF_mod.score(X_train, y_train):.3f}')
print(f'Test Accuracy: {RF_mod.score(X_test, y_test):.3f}')
Random Forest: Accuracy=1.000
Random Forest: f1-score=1.000
Train Accuracy: 1.000
Test Accuracy: 1.000
plt.style.use('seaborn-white')

feature_importance = RF_mod.feature_importances_

feature_importance = 100.0 * (feature_importance / feature_importance.max())[:30]
sorted_idx = np.argsort(feature_importance)[:30]

pos = np.arange(sorted_idx.shape[0]) + .5
print(pos.size)
sorted_idx.size
plt.figure(figsize=(5,5))
plt.barh(pos, feature_importance[sorted_idx], align='center')
plt.yticks(pos, X.columns[sorted_idx])
plt.xlabel('Relative Importance')
plt.title('Variable Importance')
plt.show();
6

Summary
● Actuators brings the most average profitability.
● Actuators and Fuse has the lowest cost of unit and the biggest net profit margin.
● Microcontrollers has the smallest number of orders bring the least average profitability, only 3.26%.
● Microcontrollers brings the smallest revenue, with the second lowest revenue form Wiring components
● The biggest revenue comes from Switches
● Thermostat, Wiring components and Microcontrollers has the highest cost per unit and the lowest net profit margin.
● California, New York, Pennsylvania and Texas brings the bigest Net Profit Margin.
● North Dakota, Delaware and South Dakota brings the lowest Net Profit Margin.
● Microcontrollers and Wiring components has the list of orders.
● About 50% of all the industries belongs to the Aerospace (28.09%) and Medical (22.25%) industries.
● Aerospace industry has the biggest number of orders and the brings the most revenue than the other industries all together.

Recommendations
⚫ I would recommend to divest from Microcontrollers this component has the biggest cost of production, the smallest revenue, and the lowest net profit margin only 3.26%.

⚫ My recommendation for "Techno Industries Inc." is to invest in top cpmponents that bring Net Profit Margin more than 100%, this cpmponents are: Actuators (152,34%), Resistors (110,04%), Thermostat (108,45%), Wiring components (104,46%), Switches (102,47%)

⚫ Promote components in California, New York, Pennsylvania and Texas
