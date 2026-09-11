-- Exercise 4: Show every user who has a subscription. Match users to subscriptions.

-- Creating Catalog For Users
CREATE CATALOG IF NOT EXISTS the;

-- Creating Schema For Users
CREATE SCHEMA IF NOT EXISTS the.users;

-- Creating a Table for the Users
CREATE TABLE IF NOT EXISTS the.users.users (
  user_id INT,
  user_name STRING,
  country STRING

);

-- Inserting Data into the Users Table
INSERT INTO the.users.users VALUES
(1, 'Nomvula', 'Johannesburg'),
(2, 'David', 'Cape Town'),
(3, 'Anele', 'Durban'),
(4, 'Kabelo', 'Pretoria'),
(5, 'Lerato', 'Port Elizabeth');

-- Creating a Catalog for Subscriptions
Create CATALOG IF NOT EXISTS the;

-- Creating a Schema for Subscriptions
CREATE SCHEMA IF NOT EXISTS the.subscriptions;

-- Creating a Table for Subscriptions
CREATE TABLE IF NOT EXISTS the.subscriptions.table (
  subscription_id INT,
  user_id INT,
  plan_id INT,
  start_date DATE

);

-- Inserting Data into the Subscriptions Table
INSERT INTO the.subscriptions.table VALUES
(501, 1, 10, '2026-01-15'),
(502, 2, 11, '2026-02-01'),
(503, 1, 12, '2026-03-10'),
(504, 6, 11, '2026-03-20'),
(505, 3, 13, '2026-04-05');

-- Question 1: Show every user who has a subscription. Match users to subscriptions.
SELECT A.user_id, user_name, subscription_id, start_date FROM the.users.users AS A INNER JOIN the.subscriptions.table AS B ON A.user_id = B.user_id; 
