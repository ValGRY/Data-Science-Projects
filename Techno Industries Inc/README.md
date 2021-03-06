
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

Sourcing and loading.      
Cleaning, transforming, and visualizing.      
Modeling.       
Evaluating and concluding.      

# Sourcing and Loading

Importing Libraries.       
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

<img src="https://user-images.githubusercontent.com/98930412/180494884-2eba6b29-5f6c-44a9-8809-19d3833c2eaf.png" width="700">

As I can see the biggest number of customers purchased Light Emitting Diode (LED) from Aerospace industry.
Be even more precise, almost all the orders for Light Emitting Diode (LED) came through Aerospace industry.
Also some of the industries has extremely low or even zero number of ordered for some components, for example Transportation industry has zero Switches Looks like Microcontrollers has the smallest number of orders.

# What is the revenue breakdown per industry?

<img src="https://user-images.githubusercontent.com/98930412/180627922-0188e699-b067-4c23-87dd-64169021bfc5.png" width="700">

So far Aerospace have been the industry with the biggest number of orders and as I can see the Aerospace brings the most revenue than the other industries all together.

# What is the revenue breakdown per product?

<img src="https://user-images.githubusercontent.com/98930412/180589494-f1d4810c-6b9b-47e2-8054-5c24f0ffb6a2.png" width="700">

Microcontrollers brings the smallest revenue, with the second lowest revenue form Wiring components
The biggest revenue comes from Switches

# Is there any seasonality in industry sales?

Creating column 'Month' to get only month names, for seasonality plot.

<img src="https://user-images.githubusercontent.com/98930412/180627948-eae671c3-9908-4b2c-ad60-8082e7d9668d.png" width="700">

Aerospace industry has sign of seasonality.

Let's check which product Aerospace industry has seasonality.
I am going to separate Aerospace industry from other industries.

<img src="https://user-images.githubusercontent.com/98930412/180627960-d22cf739-0b26-4cdf-99c5-2c7c5fb09963.png" width="700">

Laser diode has seasonality and Switches has some signs of seasonality.
I can assume that there are the best seasons to do testing or launching of new developed product, and they may need new components to fix something or build something new before next testing or launching season.

# Which segment yields the highest average profit margin?

I am going to add calculated field 'Net Profit Margin' so I can plot average profit margin.

<img src="https://user-images.githubusercontent.com/98930412/180495627-c58b610c-c55e-4f0a-86d3-499ac7b4e7a7.png" width="700">

Even though Aerospace industry has the biggest number of orders and brings the biggest revenue among all the industries that company working in, it has the lowest average net profit margin.

The Medical industry has the biggest percentage of average net profit margin, with pretty close second place Industrial segment

# Which products are driving the highest and the lowest profit?

<img src="https://user-images.githubusercontent.com/98930412/180589453-ac031087-fcfb-4afa-9435-bc6e61c43ad2.png" width="700">

As we already know Actuators were second biggest component in terms of orders and it brings the most average profitability.
On the other side Microcontrollers that has the smallest number of orders bring the least average profitability, only 3.26%.

# What is the geographic distribution of each segment?

<img src="https://user-images.githubusercontent.com/98930412/180589419-aaf2c3f5-aba6-480f-b1a7-bbe23ba8413f.png" width="700">

As we can see California, New York, Pennsylvania and Texas brings the bigest Net Profit Margin. On the other end North Dakota, Delaware and South Dakota brings the list of Net Profit Margin.

# Which product has the highest growth potential?

<img src="https://user-images.githubusercontent.com/98930412/180495896-cbdf97de-3cb4-4a4e-bbc9-e8762d426bbc.png" width="700">

As we can see 'Thermostat', 'Wiring components' and 'Microcontrollers' has the highest cost per unit and the lowest net profit margin among all the components.
Lets take a closer look at the 'Microcontrollers' this component has the biggest cost of production and the lowest net profit margin among all the components, only 3.26% as we know from previous plot.

Actuators and Fuse has the lowest cost of unit and the biggest net profit margin.

# Summary
● Actuators brings the most average profitability.           
● Actuators and Fuse has the lowest cost of unit and the biggest net profit margin.             
● Microcontrollers has the smallest number of orders bring the least average profitability, only 3.26%.          
● Microcontrollers brings the smallest revenue, with the second lowest revenue form Wiring components.          
● The biggest revenue comes from Switches.          
● Thermostat, Wiring components and Microcontrollers has the highest cost per unit and the lowest net profit margin.             
● California, New York, Pennsylvania and Texas brings the bigest Net Profit Margin.           
● North Dakota, Delaware and South Dakota brings the lowest Net Profit Margin.           
● Microcontrollers and Wiring components has the list of orders.             
● About 50% of all the industries belongs to the Aerospace (28.09%) and Medical (22.25%) industries.            
● Aerospace industry has the biggest number of orders and the brings the most revenue than the other industries all together.

# Recommendations
● I would recommend to divest from Microcontrollers this component has the biggest cost of production, the smallest revenue, and the lowest net profit margin only 3.26%.

● My recommendation for "Techno Industries Inc." is to invest in top cpmponents that bring Net Profit Margin more than 100%, this cpmponents are: Actuators (152,34%), Resistors (110,04%), Thermostat (108,45%), Wiring components (104,46%), Switches (102,47%)

● Promote components in California, New York, Pennsylvania and Texas
