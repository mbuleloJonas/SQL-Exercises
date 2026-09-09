-- Exercise 3: CASE STATEMENTS: Deliveries table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.deliveries;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.deliveries.table(
  order_id INT,
  delivery_time_minutes INT

);

-- Inserting Data into the Table
INSERT INTO the.deliveries.table VALUES 
(1, 45), 
(2, 80), 
(3, 30), 
(4, 65), 
(5, 100);

-- Label delivery performance based on the time taken. When delivery_time =< 30 minutes Then 'Fast', When delivery_time between 31 and 60 minutes Then 'On Time' else > 60 minutes then "Late"
SELECT order_id, delivery_time_minutes, CASE WHEN delivery_time_minutes <= 30 THEN 'Fast' WHEN delivery_time_minutes BETWEEN 31 AND 60 THEN 'On Time' ELSE 'Late' END AS performance FROM the.deliveries.table;
