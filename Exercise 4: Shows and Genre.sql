-- Exercise 4: Show every viewing session that has a matching show. Include the show title and genre.

-- Creating a Catalog for Viewing_Sessions table
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Viewing_Sessions table
CREATE SCHEMA IF NOT EXISTS the.viewing_sessions;

-- Creating a Table for Viewing_Sessions table
CREATE TABLE IF NOT EXISTS the.viewing_sessions.table(
  session_id INT,
  user_id INT,
  show_id INT,
  watch_minutes INT
  );

  -- Inserting Data into the Viewing_Sessions table
INSERT INTO the.viewing_sessions.table VALUES
(901,1,701,45),
(902,2,702,30),
(903,3,703,60),
(904,4,704,20),
(905,5,705,90);

-- Creating a Catalog for the Shows table
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for the Shows table
CREATE SCHEMA IF NOT EXISTS the.shows;

-- Creating a Table for the Shows table
CREATE TABLE IF NOT EXISTS the.shows.table(
  show_id INT,
  show_title STRING,
  genre STRING

  );

-- Inserting Data into the Shows table
INSERT INTO the.shows.table VALUES
(701,'Comedy hour','Comedy'),
(702,'Crime Time','Drama'),
(703,'Tech Tales','Documentary'),
(704,'Cooking Lab','Lifestyle'),
(705,'Wild Earth','Documentary');



-- Show every viewing session that has a matching show. Include the show title and genre.
SELECT A.session_id, A.user_id, B.show_title, B.genre, A.watch_minutes FROM the.viewing_sessions.table AS A INNER JOIN the.shows.table AS B ON A.show_id = B.show_id;
