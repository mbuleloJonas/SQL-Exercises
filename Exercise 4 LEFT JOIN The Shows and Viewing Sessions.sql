-- Exercise 4: Show every show and any viewing sessions on it. Shows that were never watched must still appear.

-- Creating Catalog for Shows
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema for Shows
CREATE SCHEMA IF NOT EXISTS the.shows;

-- Creating a Table for Shows
CREATE TABLE IF NOT EXISTS the.shows.table(
  show_id INT,
  show_title STRING,
  genre STRING
  
  );

  -- Inserting Data into the Table
  INSERT INTO the.shows.table VALUES
  (701, 'Comedy Hour', 'Comedy'),
  (702, 'Crime Time', 'Drama'),
  (703, 'Tech Tales', 'Documentary'),
  (704, 'Cooking Lab', 'Lifestyle'),
  (706, 'Wild Earth', 'Documentary');

  -- Creating a Catalog for Viewing Sessions
  CREATE CATALOG IF NOT EXISTS the;

  -- Creating a Schema for Viewing Sessions
  CREATE SCHEMA IF NOT EXISTS the.viewing_sessions;

  -- Creating a Table for Viewing Sessions
  CREATE TABLE IF NOT EXISTS the.viewing_sessions.table(
    session_id INT,
     user_id INT,
    show_id INT,
    watch_minutes INT);

    -- Inserting Data into the Viewing Sessions Table
    INSERT INTO the.viewing_sessions.table VALUES
  (901, 1, 701, 45),
  (902, 2, 703, 30),
  (903, 1, 702, 60),
  (904, 7, 701, 20),
  (905, 3, 705, 90);

  -- Question 8: Show every show and any viewing sessions on it. Shows that were never watched must still appear.
  SELECT A.show_id, A.show_title, B.session_id, B.watch_minutes FROM the.shows.table AS A LEFT JOIN the.viewing_sessions.table AS B ON A.show_id = B.show_id;
