-- Exercise 4: Show every user, the plan they are on (if any), and the monthly price. Users without a subscription must still appear.

-- Creating a Catalog for Users
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for users
CREATE SCHEMA IF NOT EXISTS the.users;

-- Creating a Table for users
CREATE TABLE IF NOT EXISTS the.users.table(
  user_id INT,
  user_name STRING,
  country STRING);

  -- Inserting Data into the Users table
  INSERT INTO the.users.table VALUES
(1, 'Nomvula', 'Johannesburg'),
(2, 'David', 'Cape Town'),
(3, 'Anele', 'Durban'),
(4, 'Kabelo', 'Pretoria'),
(5, 'Lerato', 'Port Elizabeth');

-- Creating a Catalog for Subscriptions
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Subscriptions
CREATE SCHEMA IF NOT EXISTS the.subscriptions;

-- Creating a Table for Subscriptions
CREATE TABLE IF NOT EXISTS the.subscriptions.table(
  susbcription_id INT,
  user_id INT,
  plan_id INT,
  start_date DATE
  
  );

-- Inserting Data into Subscriptions Table
INSERT INTO the.subscriptions.table VALUES
(501, 1, 10, '2026-01-15'),
(502, 2, 11, '2026-02-01'),
(503, 1, 12, '2026-03-10'),
(504, 6, 11, '2026-03-20'),
(505, 3, 13, '2026-04-05');

-- Creating a Catalog for Plans
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

-- Question 10: Show every user, the plan they are on (if any), and the monthly price. Users without a subscription must still appear.
SELECT A.user_name, A.country, C.plan_name, C.monthly_price FROM the.users.table AS A LEFT JOIN the.subscriptions.table AS B ON A.user_id = B.user_id LEFT JOIN the.plans.table AS C ON B.plan_id = C.plan_id;
