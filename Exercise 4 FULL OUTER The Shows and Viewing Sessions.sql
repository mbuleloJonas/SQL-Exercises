-- Exercise 4: Show every show and every viewing session, including shows that were never watched AND sessions referencing shows that do not exist.

-- Creating a Catalog for Shows
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Shows
CREATE SCHEMA IF NOT EXISTS the.shows;

-- Creating a Table for Users
CREATE TABLE IF NOT EXISTS the.shows.table(
  show_id INT,
  show_title STRING,
  genre STRING);

-- Inserting Data into the Shows table
INSERT INTO the.shows.table VALUES
(701, 'Comedy Hour', 'Comedy'),
(702, 'Crime Time', 'Drama'),
(703, 'Tech Tales', 'Documentary'),
(704, 'Cooking Lab', 'Lifestyle'),
(706, 'Wild Earth', 'Documentary');


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

-- Question 13: Show every show and every viewing session, including shows that were never watched AND sessions referencing shows that do not exist.
SELECT A.show_id, A.show_title, B.session_id, B.watch_minutes FROM the.shows.table AS A FULL OUTER JOIN the.viewing_sessions.table AS B ON A.show_id = B.show_id;
