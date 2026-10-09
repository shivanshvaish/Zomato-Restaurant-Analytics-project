-- PROJECT: ZOMATO RESTAURANT ANALYTICS
-- TOOL: MySQL
-- PURPOSE: Business-focused restaurant data analysis


-- 1. Restaurant distribution by country
select country, count(distinct(restaurant_id)) as total_restaurants from outlet group by country order by total_restaurants desc;

-- 2. Top 10 cities by restaurant count
select city, count(distinct(restaurant_id)) as total_outlets from outlet group by city order by total_outlets desc limit 10;

-- 3. Highly rated and highly engaged restaurants
select restaurant_name,city,rating,votes from outlet where rating>=4.5 and votes>1000 order by rating desc ,votes desc limit 10;

-- 4. Online delivery vs average rating
SELECT
    has_online_delivery,
    round(AVG(
        CASE
            WHEN rating > 0 THEN rating
        END
    ),1) AS average_rating
FROM outlet
GROUP BY has_online_delivery;

-- 5. Average cost by price range
select price_range,round(avg(avg_cost_inr)) as avg_cost from outlet group by price_range order by avg_cost desc;

-- 6. Top cities by average restaurant cost
select city,avg(avg_cost_inr) as avg_cost, COUNT(DISTINCT (restaurant_id)) AS restaurant_count from outlet group by city HAVING COUNT(DISTINCT (restaurant_id)) >= 10 order by avg_cost desc limit 10;

-- 7. Top-rated restaurant per city
WITH ranked_restaurants AS (
    SELECT
        restaurant_name,
        city,
        rating,
        votes,
        ROW_NUMBER() OVER (
            PARTITION BY city
            ORDER BY rating DESC, votes DESC
        ) AS ranking
    FROM outlet
    WHERE rating > 0
)
SELECT
    restaurant_name,
    city,
    rating,
    votes
FROM ranked_restaurants
WHERE ranking = 1;

-- 8. . Highly rated and affordable restaurants
select restaurant_name,city,avg_cost_inr,rating from outlet where rating>=4.5 and price_range='budget' and avg_cost_inr>0 and votes>100 order by avg_cost_inr asc,rating desc,votes desc limit 10;

-- 9. Average votes by rating category
SELECT 
    CASE 
        WHEN rating = 0 THEN "not rated"
        WHEN rating > 0   AND rating <= 2   THEN "0.1-2"
        WHEN rating > 2   AND rating <= 3   THEN "2.1-3"
        WHEN rating > 3   AND rating <= 4   THEN "3.1-4"
        WHEN rating > 4   AND rating <= 4.5 THEN "4.1-4.5"
        WHEN rating > 4.5 AND rating <= 5   THEN "4.6-5"
    END AS rating_category, 
    round(AVG(votes),1) AS avg_votes
FROM outlet
GROUP BY rating_category;

-- 10. Average rating by rating category
SELECT 
    CASE 
        WHEN rating = 0 THEN "not rated"
        WHEN rating > 0   AND rating <= 2   THEN "0.1-2"
        WHEN rating > 2   AND rating <= 3   THEN "2.1-3"
        WHEN rating > 3   AND rating <= 4   THEN "3.1-4"
        WHEN rating > 4   AND rating <= 4.5 THEN "4.1-4.5"
        WHEN rating > 4.5 AND rating <= 5   THEN "4.6-5"
    END AS rating_category, 
    round(AVG(rating),1) AS avg_rating
FROM outlet
GROUP BY rating_category;


     
     