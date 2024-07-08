SELECT * FROM walmart_sales;

-- Overall Sales trend over the period of time

SELECT date, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY date
ORDER BY date;

-- Yearly sales trend

SELECT EXTRACT(YEAR FROM date) AS yr, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY EXTRACT(YEAR FROM date)
ORDER BY EXTRACT(YEAR FROM date);

-- Avg sales during holiday and non-holiday week

SELECT holiday_flag, AVG(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY holiday_flag;

-- Top performing stores

SELECT store, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY store
ORDER BY SUM(weekly_sales) DESC
LIMIT 10;

-- Low performing stores

SELECT store, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY store
ORDER BY SUM(weekly_sales) ASC
LIMIT 10;

-- Impact of external factors on sales

-- 1. Temperature

SELECT temprature, AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY temprature
ORDER BY temprature DESC;

-- 2. Fuel Price

SELECT fuel_price, AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY fuel_price
ORDER BY fuel_price DESC;

-- 3. CPI

SELECT cpi, AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY cpi
ORDER BY cpi DESC;

-- 4. Unemployment

SELECT unemployment, AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY unemployment
ORDER BY unemployment DESC;

-- Seasonal Patterns

-- Monthly sales

SELECT EXTRACT(MONTH FROM date) AS month, SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(MONTH FROM date);





