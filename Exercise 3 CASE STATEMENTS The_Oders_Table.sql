-- Exercise 3: CASE STATEMENTS: The Orders Table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Database
CREATE DATABASE IF NOT EXISTS the.orders;

-- Creating a table:
CREATE TABLE IF NOT EXISTS the.orders.table (
  order_id INT,
  customer_name STRING,
  amount INT
);
-- Inserting data into the Table
INSERT INTO the.orders.table VALUES 
(1, 'Alice', 150), 
(2, 'Bob', 560), 
(3, 'Charlie', 999.99), 
(4, 'Diana', 45.50), 
(5, 'Ethan', 1200.00);

-- Labele each order by its value. when orders>=1000 THEN 'High Value', When orders Between 500 and 999.99 then 'Medium Value', When orders <500 Then 'Low Value'.
SELECT customer_name, amount, CASE WHEN amount>=1000 THEN 'High Value' WHEN amount BETWEEN 500 AND 999.99 THEN 'Medium Value' ELSE 'Low Value' END AS value_category FROM the.orders.table;
