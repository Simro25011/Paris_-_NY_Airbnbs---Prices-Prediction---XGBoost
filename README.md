# Airbnb Analysis: New York and Paris

## Overview

This repository contains an in-depth analysis of Airbnb data for two of the most popular tourist destinations in the world: New York and Paris. These cities are renowned for their unique attractions, vibrant cultures, and significant tourist footfalls, making them ideal choices for our analysis. 

Understanding the dynamics of the Airbnb market in these cities will provide insights into various aspects like pricing strategies, popular neighborhoods, room types, and host behaviors. This analysis aims to help hosts optimize their operations, assist travelers in making informed decisions, and enable policymakers to understand the impact of Airbnb on the housing market.

## Dataset
We will retrieved our dataset from OpenDataDOft platform. odsclient provides a minimal set of functions to grab a dataset or a collection of datasets from an OpenDataSoft (ODS) platform.
The dataset regroups informations for Airbnbs in cities accross the world and in anticipation or the volume of the dataset we decide to save it directly in our local postgres database.
For the purposes of our analysis we will only retrieve informations for Paris and New York.
The initial dataset contained 88 columns , we will clean it and only keep the necessary informations for analysis.


To do that we will first conduct our prices predictions analysis using XGBoost It is an excellent choice for price prediction due to its ability to handle numeric features and non-linear relationships, its robustness to outliers, and its scalability for large datasets. It captures feature interactions automatically and offers regularization parameters to prevent overfitting. Its efficiency and performance make it well-suited for the complex and often noisy relationships found in pricing data. we will be able also to determine important features that we can use later on for our Exploratory Data analysis and vizualisation in Tableau.

### Price Predictions
I. Removing unnecessary features and preprocessing for both cities

-'Country','City', 'State', 'Jurisdiction Names', 'Host Location', 'Market', 'Zipcode','Country Code', 'Smart Location': since we are going to predict prices only for paris, we can take them off.
- prices: since most of the airbnb don't have a special price for a whole week or month, we will drop 'Weekly Price' and 'Monthly Price' columns, and predict only daily price. (but I'll do that after filling null values in price column)
-'Name', 'ID', 'Host Name', 'Host ID', 'Calendar Updated', 'Listing Url', 'Picture Url', 'Neighbourhood Cleansed', 'Interaction', 'Host Thumbnail Url', 'Thumbnail Url', 'Medium Url', 'XL Picture Url','Host Picture Url', 'Host URL': columns that will not help us in prediction.
- empty columns: 'Host Acceptance Rate', 'Neighbourhood Group Cleansed', 'Experiences Offered', 'Experiences Offered', 'Has Availability', 'License'
- 'Host About': since I don't want to be racist in my solution I decided to delete this column, (some hosts wrote their gender, race, age ..)
- more columns that I'll not use for now (free-text columns): 'Access', 'Notes', 'Neighborhood Overview', 'House Rules', 'Description', 'Space', 'Summary'
- 'Square Feet': this column is almost completly empty.

We decided to have 2 datasets one for the city of Paris and the other one for New York. THis way we can forcast prices and also which features are important for each city.
The details on how we decided to fill null values, formatted columns and preprocessed are explained in our Jupyther notebook.

II. Train, Test , Split
For a more detailed walkthrough of the machine learning model, including the code and the logic behind it, please refer to the accompanying Jupyter notebook, which can be accessed here [Paris & New York City Airbnb - Prices Prediction.ipynb](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Paris%20%26%20New%20York%20City%20Airbnb%20-%20Prices%20Prediction.ipynb).
We used grid search that will find the best parameters to use in XGB with each specific city dataset and cross validation to test the model's ability to predict new data that was not used in estimating.
  - Paris

  
  
  
  - New York 


## Analysis
The final dataset used for this analysis includes the following columns:

- `ID`: A unique identifier for each Airbnb listing
- `Name`: The name of the Airbnb listing
- `Host ID`: A unique identifier for each host
- `Host Name`: The name of the host
- `Neighbourhood`: The neighborhood where the Airbnb is located
- `Neighbourhood Cleansed`: A cleaned version of the neighborhood data
- `Latitude` and `Longitude`: The geographic coordinates of the Airbnb
- `Room Type`: The type of room (e.g., Entire home/apt, Private room)
- `Price`: The price per night for the Airbnb
- `Minimum Nights`: The minimum number of nights a guest can book the Airbnb
- `Number of Reviews`: The total number of reviews the Airbnb has received
- `Last Review`: The date of the latest review
- `Reviews per Month`: The average number of reviews the Airbnb receives per month
- `Calculated host listings count`: The number of listings the host has in total
- `Availability 365`: The number of days in the next 365 days that the Airbnb is available
- `City`: The city where the Airbnb is located (New York or Paris)


The analysis is divided into several parts:

1. **Distribution of Listings**: Analysis of the geographic distribution of listings in both cities.
  - Paris
   ![Top 10 Airbnbs Neighbourhood in Paris](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/top10_neighbourhoods_Paris.png)
   
   
   
   
   - New york
   ![Top 10 Airbnbs Neighbourhood in New York](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/top10_neighbourhoods_NY.png)
   
   


2. **Pricing Strategy**: Analysis of the pricing strategies adopted by hosts.
![Price distribution per City](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Price%20distribution%20per%20City.png)

3. **Popular Room Types**: Analysis of the popularity of different room types.
![Popular Room Type by City](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Popular%20Room%20Types%20by%20City.png)

4. **Availability Trends**: Analysis of the availability of listings throughout the year.
 - Overhall availibilty
![Overhall availibilty](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Overhall%20availability%20of%20Airbnbs%20per%20City.png)

   - Trends over time per city
![Average availibilty per month in New York](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/NY%20Average%20Availability%20per%20Month.png)

![Average availibilty per month in Paris](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Paris%20Average%20Availability%20per%20Month.png)


5. **Minimum Nights Requirement**: Analysis of the minimum nights requirement set by hosts.
![Distribution of minimum nights requirement in Paris](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Distribution%20of%20minimum%20nights%20requirement%20in%20Paris.png)

![Distribution of minimum nights requirement in New York](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Distribution%20of%20minimum%20nights%20requirement%20in%20New%20York.png)



## Conclusion

This analysis provides a detailed understanding of the Airbnb market in New York and Paris, which can be valuable for hosts, travelers, and policymakers. The choice of cities allows us to compare and contrast the market dynamics in two very different yet equally popular tourist destinations. 

We hope that the insights generated from this analysis will contribute to a better understanding of the Airbnb platform and its impact on cities worldwide.
