-- Exercise 4: Show every user and every viewing session, including users with no sessions AND sessions referencing users who do not exist.

-- Creating a Catalog for Users
CREATE CATALOG IF NOT EXISTS the;

-- Create a Schema for Users
CREATE SCHEMA IF NOT EXISTS the.users;

-- Creating Table for Users
CREATE TABLE IF NOT EXISTS the.users.table(
  user_id INT,
  user_name STRING,
  country STRING
);

-- Inserting Data into the Users table
INSERT INTO the.users.table VALUES
(1, 'Nomvula', 'Johannesburg'),
(2, 'David', 'Cape Town'),
(3, 'Anele', 'Durban'),
(4, 'Kabelo', 'Pretoria'),
(5, 'Lerato', 'Port Elizabeth');

-- Creating Catalog for Subscriptions
CREATE CATALOG IF NOT EXISTS the;

-- Creating Schema for Subscriptions
CREATE SCHEMA IF NOT EXISTS the.subscriptions;

-- Creating Table for Subscriptions
CREATE TABLE IF NOT EXISTS the.subscriptions.table (
  suscription_id INT,
  user_id INT,
  plan_id INT,
  date DATE
);

-- Inserting Data into the Subscriptions table
INSERT INTO the.subscriptions.table VALUES
(501, 1, 10, '2026-01-15'),
(502, 2, 11, '2026-02-01'),
(503, 1, 12, '2026-03-10'),
(504, 6, 11, '2026-03-20'),
(505, 3, 13, '2026-04-05');

-- Creating Catalog for Plans
CREATE CATALOG IF NOT EXISTS the;

-- Creating Schema for Plans
CREATE SCHEMA IF NOT EXISTS the.plans;

-- Creating Table for Plans
CREATE TABLE IF NOT EXISTS the.plans.table(
  plan_id INT,
  plan_name STRING,
  monthly_price INT

);

-- Iserting Data into the Plans Table
INSERT INTO the.plans.table VALUES
(10, 'Basic', 79),
(11, 'Standard', 129),
(12, 'Premium', 199),
(13, 'Family', 249),
(14, 'Mobile', 59);

-- Question 15: Show every user, every subscription, and every plan in one query — using FULL OUTER JOIN throughout. This is the hardest question — get all gaps visible at once.
SELECT A.user_id, A.user_name, B.suscription_id, C.plan_id, C.plan_name FROM the.users.table AS A FUll OUTER JOIN the.subscriptions.table AS B ON A.user_id = B.user_id FULL OUTER JOIN the.plans.table AS C ON B.plan_id = C.plan_id;
