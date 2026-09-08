-- Exercise 3: CASE STATEMENTS: The products table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Shema
CREATE SCHEMA IF NOT EXISTS the.products;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.products.tables 
(product_id INT,
product_name STRING, 
price INT
);

-- Loading information into the table
INSERT INTO the.products.tables VALUES (1, 'Laptop', 1200), 
(2, 'phone', 800), 
(3, 'Keyboard', 85), 
(4, 'Monitor', 300), 
(5, 'Mouse', 25);

-- Question 1: Classify each product if price > 1000 as Expensive, if price between 500 and 1000 as Mid-range, if price < 100 as Budget.
SELECT product_name, price, CASE WHEN price > 1000 THEN 'Expensive' WHEN price BETWEEN 500 AND 1000 THEN 'Mid-range' WHEN price < 500 THEN 'Budget' END AS price_category FROM the.products.tables;
