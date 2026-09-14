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

-- Creating Catalog for Viewing Sessions
CREATE CATALOG IF NOT EXISTS the;

-- Creating Schema for Viewing Sessions
CREATE SCHEMA the.viewing_sessions;

-- Creating Table for Viewing Sessions
CREATE TABLE IF NOT EXISTS the.viewing_sessions.table(
  session_id INT,
  user_id INT,
  show_id INT,
  watch_minutes INT
  
  );

  -- Inserting Data into the Viewing Session Table
  INSERT INTO the.viewing_sessions.table VALUES
  (901, 1, 701, 45),
  (902, 2, 703, 30),
  (903, 1, 702, 60),
  (904, 7, 701, 20),
  (905, 3, 705, 90);

  -- QUESTION 14: Show every user and every viewing session, including users with no sessions AND sessions referencing users who do not exist.
SELECT A.user_id, A.user_name, B.session_id, B.show_id, B.watch_minutes FROM the.users.table AS A FULL OUTER JOIN the.viewing_sessions.table AS B ON A.user_id = B.user_id;
