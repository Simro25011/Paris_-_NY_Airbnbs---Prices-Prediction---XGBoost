# Airbnb Analysis: New York and Paris

## Overview

This repository contains an in-depth analysis of Airbnb data for two of the most popular tourist destinations in the world: New York and Paris. These cities are renowned for their unique attractions, vibrant cultures, and significant tourist footfalls, making them ideal choices for our analysis. 

Understanding the dynamics of the Airbnb market in these cities will provide insights into various aspects like pricing strategies, popular neighborhoods, room types, and host behaviors. This analysis aims to help hosts optimize their operations, assist travelers in making informed decisions, and enable policymakers to understand the impact of Airbnb on the housing market.

## Dataset

The dataset used for this analysis includes the following columns:

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

## Analysis

The analysis is divided into several parts:

1. **Distribution of Listings**: Analysis of the geographic distribution of listings in both cities.
2. **Pricing Strategy**: Analysis of the pricing strategies adopted by hosts.
3. **Popular Room Types**: Analysis of the popularity of different room types.
4. **Host Analysis**: Analysis of host behavior, including the number of listings per host.
5. **Availability Trends**: Analysis of the availability of listings throughout the year.
6. **Minimum Nights Requirement**: Analysis of the minimum nights requirement set by hosts.



1. **Distribution of Listings**
   - Paris
   ![Top 10 Airbnbs Neighbourhood in Paris](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/top10_neighbourhoods_Paris.png)
   
   
   - New york
   ![Top 10 Airbnbs Neighbourhood in New York](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/top10_neighbourhoods_NY.png)
   

2. **Pricing Strategy**

![Price distribution per City](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Price%20distribution%20per%20City.png)


3. **Popular Room Types**
![Popular Room Type by City](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Popular%20Room%20Types%20by%20City.png)


4. **Availability Trends**
   - Overhall availibilty
![Overhall availibilty](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Overhall%20availability%20of%20Airbnbs%20per%20City.png)

   - Trends over time per city
![Average availibilty per month in New York](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/NY%20Average%20Availability%20per%20Month.png)

![Average availibilty per month in Paris](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Paris%20Average%20Availability%20per%20Month.png)


8. **Minimum Nights Requirement**
![Distribution of minimum nights requirement in Paris](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Distribution%20of%20minimum%20nights%20requirement%20in%20Paris.png)

![Distribution of minimum nights requirement in New York](https://github.com/Simro25011/Paris_-_NY_Airbnbs---Prices-Prediction---XGBoost/blob/main/Resources/Distribution%20of%20minimum%20nights%20requirement%20in%20New%20York.png)







## Conclusion

This analysis provides a detailed understanding of the Airbnb market in New York and Paris, which can be valuable for hosts, travelers, and policymakers. The choice of cities allows us to compare and contrast the market dynamics in two very different yet equally popular tourist destinations. 

We hope that the insights generated from this analysis will contribute to a better understanding of the Airbnb platform and its impact on cities worldwide.
