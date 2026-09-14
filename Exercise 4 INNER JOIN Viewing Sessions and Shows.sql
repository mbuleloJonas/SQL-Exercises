-- Exercise 4: Show every viewing session that has a matching show. Include the show title and genre.

-- Creating a Catalog for a Viewing Session
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for a Viewing Session
CREATE SCHEMA IF NOT EXISTS the.viewing_sessions;

-- Creating a Table for  viewing session
CREATE TABLE IF NOT EXISTS the.viewing_sessions.table (
  session_id INT,
  user_id INT,
  show_id INT,
  watch_minutes INT

);

-- Inserting Data into the viewing sessions Table
INSERT INTO the.viewing_sessions.table VALUES
(901, 1, 701, 45),
(902, 2, 703, 30),
(903, 1, 702, 60),
(904, 7, 701, 20),
(905, 3, 705, 90);

-- Creating a Catalog Show for the Users table
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for the Users table
CREATE SCHEMA IF NOT EXISTS the.users;

-- Creating a Table for the Users table
CREATE TABLE IF NOT EXISTS the.users.table(
  user_id INT,
  user_name STRING,
  country STRING

);

-- Inserting Data into the Users Table
INSERT INTO the.users.table VALUES
(1, 'Nomvula', 'Johannesburg'),
(2, 'David', 'Cape Town'),
(3, 'Anele', 'Durban'),
(4, 'Kabelo', 'Pretoria'),
(5, 'Lerato', 'Port Elizabeth');

-- Question 4: Show every viewing session that has a matching show. Include the show title and genre.
SELECT A.user_name, A.country, B.session_id, B.show_id, B.watch_minutes FROM the.users.table AS A INNER JOIN the.viewing_sessions.table AS B ON A.user_id = B.user_id;
