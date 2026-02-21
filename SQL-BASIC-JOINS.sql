-- This SQL script demonstrates various types of JOIN operations between the 'customers' and 'orders' tables in the 'MyDatabase' database. It includes INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN examples to illustrate how to retrieve related data from both tables based on their relationships.
USE MyDatabase;

SELECT * FROM customers;
SELECT * FROM orders;

-- INNER JOIN: Retrieves records that have matching values in both tables.
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

-- LEFT JOIN: Retrieves all records from the left table (customers) and the matched records from the right table (orders). If there is no match, the result is NULL on the right side.
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

-- RIGHT JOIN: Retrieves all records from the right table (orders) and the matched records from the left table (customers). If there is no match, the result is NULL on the left side.
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c 
RIGHT JOIN orders AS o 
ON c.id = o.customer_id

-- FULL JOIN: Retrieves all records when there is a match in either left (customers) or right (orders) table. If there is no match, the result is NULL on the side that does not have a match.
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM orders AS o 
LEFT JOIN customers AS c
ON c.id = o.customer_id

-- FULL JOIN: Retrieves all records when there is a match in either left (customers) or right (orders) table. If there is no match, the result is NULL on the side that does not have a match.
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c 
FULL JOIN orders AS o 
ON c.id = o.customer_id