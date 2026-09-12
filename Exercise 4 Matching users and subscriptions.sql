-- Exercise 4: Show every user who has a subscription. Match users to subscriptions.

-- Creating a Catalog for Users Table
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Users table
CREATE SCHEMA IF NOT EXISTS the.users;

-- Creating a Table for Users table
CREATE TABLE IF NOT EXISTS the.users.table(
  user_id INT,
  user_name STRING,
  country STRING

  );

  -- Inserting Data into the Users table
INSERT INTO the.users.table VALUES
(1,'Nomvula','Johannesburg'),
(2,'David','Cape Town'),
(3,'Anele','Durban'),
(4,'Kabelo','Pretoria'),
(5,'Lerato','Port Elizabeth');


-- Creating Catalog for the Subscriptions Table
CREATE CATALOG IF NOT EXISTS the;

-- Creating Schema for the Subscriptions Table
CREATE SCHEMA IF NOT EXISTS the.subscriptions;

-- Creating Table for the Subscriptions Table
CREATE TABLE IF NOT EXISTS the.subscriptions.table(
  subscription__id INT,
  user_id INT,
  plan_id INT,
  start_date DATE

);

--Inserting Data into the Subscriptions Table
INSERT INTO the.subscriptions.table VALUES
(501,1,10,'2026-01-15'),
(502,2,11,'2026-02-01'),
(503,1,12, '2026-03-10'),
(504,6,11,'2026-04-20'),
(505,3,13,'2026-04-05');

-- Question 1: Show every user who has a subscription. Match users to subscriptions.
SELECT A.user_id, A.user_name, B.subscription__id, B.start_date FROM the.users.table AS A INNER JOIN the.subscriptions.table AS B on A.user_id = B.user_id;
