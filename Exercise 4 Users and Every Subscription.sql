-- Exercise 4: Show every user and any subscriptions they have. Users without subscriptions must still appear.


-- Creating Catalog for Plans
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Plans
CREATE SCHEMA IF NOT EXISTS the.plans;

-- Creating a Table for Plans
CREATE TABLE IF NOT EXISTS the.plans.table(
  plan_id INT,
  plan_name STRING,
  monthly_price INT

);

-- Inserting Data into the Plans Table
INSERT INTO the.plans.table VALUES
(10, 'Basic', 79),
(11, 'Standard', 129),
(12, 'Premium', 199),
(13, 'Family', 249),
(14, 'Mobile', 59);


-- Creating a Catalog for Subscriptions
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Subscriptions
CREATE SCHEMA IF NOT EXISTS the.subscriptions;

-- Creating a Table for Subscriptions
CREATE TABLE IF NOT EXISTS the.subscriptions.table(
  subscription_id INT,
  user_id INT,
  plan_id INT,
  start_date DATE

);

-- Inserting Data into the Subscription Table
INSERT INTO the.subscriptions.table VALUES
(501, 1, 10, '2026-01-15'),
(502, 2, 11, '2026-02-01'),
(503, 1, 12, '2026-03-10'),
(504, 6, 11, '2026-03-20'),
(505, 3, 13, '2026-04-05');

-- Question 7: Show every user and any subscriptions they have. Users without subscriptions must still appear.
SELECT A.plan_id, A.plan_name, B.subscription_id, B.user_id FROM the.plans.table AS A LEFT JOIN the.subscriptions.table AS B ON A.plan_id = B.plan_id;
