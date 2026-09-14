-- Exercise 3: CASE STATEMENTS: The classes Table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA if not EXISTS the.classes;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.classes.table (
  class_id INT,
  subject STRING,
  enrolled_students INT

);

-- Inserting data into the Table
INSERT INTO the.classes.table VALUES
(1, 'Math', 30),
(2, 'English', 25),
(3, 'Science', 15),
(4, 'Art', 5),
(5, 'History', 20);

-- Classify each class by the number of enrolled students. When enrolled_students >=25 Then 'Large', When enrolled_students between 10 and 24 Then 'Medium', When <10 Then 'Small'.
SELECT subject, enrolled_students, CASE
WHEN enrolled_students >=25 THEN 'Large'
WHEN enrolled_students BETWEEN 10 AND 24 THEN 'Medium' 
WHEN enrolled_students <10 THEN 'Small' END AS class_size_category FROM the.classes.table;
