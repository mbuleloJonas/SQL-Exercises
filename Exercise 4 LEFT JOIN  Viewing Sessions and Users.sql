-- Exercise 4: Show every viewing session and the user who watched it. Sessions referencing users that do not exist must still appear (with NULL user details).


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

-- Question 9: Show every viewing session and the user who watched it. Sessions referencing users that do not exist must still appear (with NULL user details).
SELECT A.session_id, A.show_id, A.watch_minutes, B.user_id, B.user_name FROM the.viewing_sessions.table AS A LEFT JOIN the.users.table AS B ON A.user_id = B.user_id;
