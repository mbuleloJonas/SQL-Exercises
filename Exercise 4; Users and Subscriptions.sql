-- Exercise 4: Show every user and any subscriptions they have. Users without subscriptions must still appear.


-- Creating Catalog for Users
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Users
CREATE SCHEMA IF NOT EXISTS the.users;

--Creating a Table For Users
CREATE TABLE IF NOT EXISTS the.users.table (
  user_id INT,
  user_name STRING,
  country STRING

);

-- Inserting Data into the User Table
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

-- Question 6: Show every user and any subscriptions they have. Users without subscriptions must still appear.
SELECT A.user_id, A.user_name, B.subscription_id, B.start_date FROM the.users.table AS A LEFT JOIN the.subscriptions.table AS B ON A.user_id = B.user_id;
