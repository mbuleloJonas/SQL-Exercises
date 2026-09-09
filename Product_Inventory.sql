-- Exercise 3: CASE STATEMENTS: The products_inventory Table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.products_inventory;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.products_inventory.table(
  product_id INT,
  stock_qty INT

);

-- Inserting data into the Table
INSERT INTO the.products_inventory.table VALUES
(1, 5),
(2, 0),
(3, 25),
(4, 10),
(5, 3);

-- Label the stock status of each product. When stock_qty = 0 Then 'Out of Stock', When stock_qty between a and 5 Then 'Low Stock' Else stock_qty >5 Then 'In Stock'

SELECT product_id, stock_qty, CASE WHEN stock_qty = 0 THEN 'Out of Stock' WHEN stock_qty BETWEEN 1 AND 5 THEN 'Low Stock' ELSE 'In Stock' END AS stock_status FROM the.products_inventory.table;
