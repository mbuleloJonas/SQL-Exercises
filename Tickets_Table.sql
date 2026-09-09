-- Exercise 3: CASE STATEMENTS: Tickets Table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.tickets;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.tickets.table(
  ticket_id INT,
  issue_type STRING,
  priority INT

);

-- Inserting data into the table
INSERT INTO the.tickets.table VALUES 
(1, 'Login Issue', 1), 
(2, 'Server down', 3), 
(3, 'Slow system', 2), 
(4, 'Email error', 2), 
(5, 'Password reset', 1);

-- Convert the numeric priority into a readable label. When priority=3 THEN 'High', When priority=2 THEN 'Medium', When priority=1 THEN 'Low'.
SELECT issue_type, priority, CASE WHEN priority= 3 THEN 'High' WHEN priority=2 THEN 'Medium' ELSE 'Low' END AS priority_label FROM the.tickets.table;
