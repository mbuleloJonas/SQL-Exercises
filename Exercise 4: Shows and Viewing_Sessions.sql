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

-- Creating a Catalog Show for the Show table
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for the Show
CREATE SCHEMA IF NOT EXISTS the.show;

-- Creating a Table for the Show
CREATE TABLE IF NOT EXISTS the.show.table(
  show_id INT,
  show_title STRING,
  gener STRING
  
);

-- Inserting Data into the Shows Table
INSERT INTO the.show.table VALUES
(701, 'Comedy Hour', 'Comedy'),
(702, 'Crime Time', 'Drama'),
(703, 'Tech Tales', 'Documentary'),
(704, 'Cooking Lab', 'Lifestyle'),
(706, 'Wild Earth', 'Documentary');

-- Question 3: Show every viewing session that has a matching show. Include the show title and genre.
SELECT A.session_id, A.user_id, B.show_title, B.gener, A.watch_minutes FROM the.viewing_sessions.table AS A INNER JOIN the.show.table AS B ON A.show_id = B.show_id;
