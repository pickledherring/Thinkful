--1st Problem
WITH maximum
AS (SELECT MAX(price) price
   	FROM sfo_listings)
SELECT *
FROM sfo_listings
JOIN maximum
ON sfo_listings.price = maximum.price

--2nd Problem
SELECT
	neighbourhood,
	AVG(reviews_per_month) review
FROM sfo_listings
GROUP BY neighbourhood
ORDER BY review DESC;

--3rd Problem
SELECT
	calender_date,
	AVG(regexp_replace(price::text, '[$,]', '', 'g')::numeric) price
FROM sfo_calendar
GROUP BY calender_date
ORDER BY price;