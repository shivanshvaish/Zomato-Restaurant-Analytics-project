# Zomato Restaurant Analytics

## Project Overview

An end-to-end data analytics project exploring restaurant distribution, ratings, customer engagement, cuisines, service availability and pricing using Excel, MySQL and Power BI.

## Business Objectives

* Analyze restaurant distribution across countries and cities.
* Examine restaurant ratings and customer engagement.
* Identify the most represented cuisines.
* Compare online delivery and table-booking availability.
* Investigate pricing differences across locations.
* Identify highly rated and relatively affordable restaurants.

## Tools Used

* Microsoft Excel — data cleaning and exploratory analysis
* MySQL — SQL-based business analysis
* Power BI — interactive dashboard and visualization
* DAX — measures and calculated analysis

## Data Preparation

* Removed redundant and non-essential columns.
* Standardized country names using country codes.
* Converted restaurant costs into standardized INR values.
* Handled missing cuisine values.
* Created a separate Cuisine Analysis table for restaurants offering multiple cuisines.
* Preserved unrated restaurants as a separate category.

## SQL Analysis

Completed 10 business-focused queries covering:

1. Restaurant distribution by country
2. Top cities by restaurant count
3. Rating category analysis
4. Highly rated and highly engaged restaurants
5. Average votes by rating category
6. Online delivery versus average rating
7. Average cost by price range
8. Cities with the highest average restaurant costs
9. Top-rated restaurant per city
10. Highly rated and affordable restaurants

## Power BI Dashboard

The report contains four pages:

1. Global Restaurant Landscape
2. Ratings and Customer Engagement
3. Cuisines and Services
4. Geography and Pricing

## Key Findings

* Restaurant records are heavily concentrated in India.
* The 3.1–4 rating category contains the largest number of restaurants in the analysis.
* Higher rating categories have higher average vote counts.
* Restaurants offering online delivery have a higher average rating in this dataset.
* North Indian cuisine is the most represented cuisine in the cuisine analysis.
* Restaurant costs vary considerably across price ranges and locations.

## Business Recommendations

* Benchmark highly rated restaurants with meaningful customer engagement.
* Investigate customer feedback to identify service improvements.
* Evaluate online delivery opportunities based on business needs.
* Use price segmentation for targeted marketing.
* Identify highly rated, relatively affordable restaurants.

## Limitations

* The dataset is geographically imbalanced.
* INR comparisons depend on the exchange-rate assumptions used.
* Cuisine counts may exceed unique restaurant counts because restaurants can offer multiple cuisines.
* Observed associations do not establish causation.
* The analysis reflects the dataset snapshot, not necessarily current restaurant conditions.

## Project Structure

* `Data/` — cleaned workbook, if permitted for sharing
* `SQL/` — SQL analysis queries
* `PowerBI/` — Power BI report
* `Dashboard/` — dashboard screenshots
* `Documentation/` — project findings and recommendations
