-- This SQL script demonstrates various SELECT queries on the 'customers' and 'orders' tables in the 'MyDatabase' database. It includes examples of retrieving all records, selecting specific columns, filtering records based on conditions, sorting results, grouping data, and using aggregate functions.
USE MyDatabase;

-- 1. Retrieving all records from the 'customers' table
SELECT * 
FROM customers;

-- 2. Retrieving all records from the 'orders' table
SELECT * 
FROM orders;

-- 3. Retrieving specific columns from the 'customers' table
SELECT
	order_id,
	order_date,
	sales
FROM orders;

-- 4. Filtering records from the 'customers' table based on a condition
SELECT * 
FROM customers
WHERE score>=500;

-- 5. Retrieving specific columns with a filter condition
SELECT 
	id,
	first_name,
	country
FROM customers
WHERE country='USA';

-- 6. Sorting records from the 'orders' table by sales in ascending order
SELECT *
FROM orders
ORDER BY sales ASC;

-- 7. Sorting records from the 'customers' table by country in descending order and score in ascending order
SELECT *
FROM customers
ORDER BY 
	country DESC, 
	score ASC;

-- 8. Grouping records from the 'customers' table by country and calculating the average score for each country
SELECT
	first_name,
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country,first_name;

-- 9. Grouping records from the 'customers' table by country and calculating the average score and count of customers for each country
SELECT
	country,
	AVG(score) AS total_score,
	COUNT(id) AS customer_count
FROM customers
GROUP BY country;

-- 10. Grouping records from the 'customers' table by country and calculating the average score for each country, but only including countries with an average score greater than 430
SELECT 
	country,
	AVG(score) as average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score)>430;

-- 11. Retrieving distinct countries from the 'customers' table
SELECT DISTINCT	country
FROM customers;

-- 12. Retrieving the top 3 customers with the highest scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- 13. Retrieving the top 2 most recent orders
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;


