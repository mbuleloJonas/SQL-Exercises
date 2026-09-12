-- Exercise 4: Show every subscription with its matching plan name and monthly price.


-- Creating a Catalog for Subscriptions
Create CATALOG IF NOT EXISTS the;

-- Creating a Schema for Subscriptions
CREATE SCHEMA IF NOT EXISTS the.subscriptions;

-- Creating a Table for Subscriptions
CREATE TABLE IF NOT EXISTS the.subscriptions.table(
  subscription_id INT,
  user_id INT,
  plan_id INT,
  start_date DATE

);

-- Inserting Data into the Subscriptions Table
INSERT INTO the.subscriptions.table VALUES (501, 1, 10, '2026-01-15'),
(502, 2, 11, '2026-02-01'),
(503, 1, 12, '2026-03-10'),
(504, 6, 11, '2026-03-20'),
(505, 3, 13, '2026-04-05');

-- Creating a Catalog for Plans Table
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Plans Table
CREATE SCHEMA IF NOT EXISTS the.plans;

-- Creating a Table for Plans Table
CREATE TABLE IF NOT EXISTS the.plans.table (
  plan_id INT,
  plan_name STRING,
  monthly_price INT

);

-- Inserting Data into the Plans Table
INSERT INTO the.plans.table VALUES 
(10, 'Basic', 79),
(11, 'Standard', 129),
(12, 'Platinum', 199),
(13, 'Family', 249),
(14, 'Mobile', 59);

-- Show every subscription with its matching plan name and monthly price.
SELECT A.subscription_id, A.user_id, B.plan_name, B.monthly_price FROM the.subscriptions.table AS A INNER JOIN the.plans.table AS B ON A.plan_id = B.plan_id;
