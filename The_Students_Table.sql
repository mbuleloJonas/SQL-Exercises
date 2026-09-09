-- Exercise 3: CASE STATEMENTS: Students table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.students;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.students.table(
  student_id INT,
  student_name STRING,
  score FLOAT
);

-- Inserting Data into the Table
INSERT INTO the.students.table VALUES
  (1, 'Anna', 92),
  (2, 'Ben', 76),
  (3, 'Cara', 59),
  (4, 'David', 83),
  (5, 'Ella', 68);

  -- Assign each student a letter grade based on their score. When score >= 90 Then 'A', When score between 80 and 89 Then 'B', When score between 70 and 79 Then 'C', When score between 60 and 69 Then 'D', Else 'F'.
  SELECT student_name, score, CASE WHEN score >= 90 THEN 'A' WHEN score BETWEEN 80 and 89 THEN 'B' WHEN score BETWEEN 70 AND 79 THEN 'C' WHEN score BETWEEN 60 AND 69 THEN 'D' ELSE 'F' END AS grade FROM the.students.table;
