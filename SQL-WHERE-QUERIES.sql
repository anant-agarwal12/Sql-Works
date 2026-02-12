-- SQL WHERE Clause Examples
USE MyDatabase;

-- Where clause with '=' operator
SELECT *
FROM customers
WHERE country = 'Germany';

-- Where clause with '!=' operator
SELECT *
FROM customers
WHERE country != 'Germany';

-- Where clause with '>' operator
SELECT *
FROM customers
WHERE score > 700;

-- Where clause with '>=' operator
SELECT *
FROM customers
WHERE score >= 500;

-- Where clause with '<' operator
SELECT *
FROM customers
WHERE score < 500;

-- Where clause with '<=' operator
SELECT *
FROM customers
WHERE score <= 500;

-- Where clause with 'AND' operator
SELECT * 
FROM customers
WHERE country = 'USA' AND score > 500;

-- Where clause with 'OR' operator
SELECT * 
FROM customers
WHERE country = 'USA' OR score > 500;

-- Where clause with 'NOT' operator
SELECT * 
FROM customers
WHERE NOT score < 500;

-- Where clause with 'BETWEEN' operator
SELECT * 
FROM  customers
WHERE score BETWEEN 100 AND	500;

-- Where clause with and operator as it clearly defines the inclusive range of values for the score column
SELECT * 
FROM customers
WHERE score >= 100 AND score <= 500;

-- Where clause with 'IN' operator
SELECT *
FROM customers
WHERE country = 'USA' OR country = 'Germany';

-- Where clause with 'IN' operator is more concise and easier to read when checking for multiple values in the country column
SELECT *
FROM customers
WHERE country IN ('USA', 'Germany');

-- Where clause with 'NOT IN' operator
SELECT *
FROM customers
WHERE country NOT IN ('USA', 'Germany');

-- Where clause with 'LIKE' operator to find names that start with 'M'
SELECT *
FROM customers
WHERE first_name LIKE 'M%'; -- LIKE is not case sensitive

-- Where clause with 'LIKE' operator to find names that end with 'N'
SELECT *
FROM customers
WHERE first_name LIKE '%N';

-- Where clause with 'LIKE' operator to find names that contain 'r'
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Where clause with 'LIKE' operator to find names that have 'r' as the third character
SELECT *
FROM customers
WHERE first_name LIKE '__r%';


