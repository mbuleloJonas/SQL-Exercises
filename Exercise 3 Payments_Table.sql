-- Exercise 3: CASE STATEMENTS: The Payments Table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.employees;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.employees.table(
  payment_id INT,
  amount INT,
 payment_method STRING
);

-- Inserting Data into the Table
INSERT INTO the.employees.table VALUES
(1, 50.00, 'Card'),
(2, 200.00, 'Cash'),
(3, 150.00, 'Cash'),
(4, 75.00, 'Paypal'),
(5, 300.00, 'Cash');

-- Apply a discount flag based on the payment method and amount. When payment_method = 'Cash' and amount >=200 Then 'Eligible for Discount', else 'Not Eligible'.
SELECT payment_id, amount, payment_method, CASE WHEN payment_method = 'Cash' AND amount >=200 THEN 'Eligible for Discount' ELSE 'Not Eligible' END AS discount_eligibility FROM the.employees.table;
