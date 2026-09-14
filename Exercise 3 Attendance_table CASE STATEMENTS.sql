-- Exercise 3: CASE STATEMENTS: Attendace Table

-- Creating Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.attendence;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.attendence.table (
  student_id INT,
  days_present INT,
  total_days INT
  
);

-- Inserting data into the Table
INSERT INTO the.attendence.table VALUES 
(1, 45, 50), 
(2, 30, 50), 
(3, 48, 50), 
(4, 25, 50), 
(5, 50, 50);

-- Calculate attendance percentage and classify the result. When attendence percentage >= 90 Then 'Excelent', When attendence percentage between 75 and 89 Then 'Good', else attendence <75 Then 'Needs Improvement'.

SELECT student_id, (days_present/total_days)*100 AS attendence_percentage, CASE WHEN attendence_percentage >= 90 THEN 'Excellent' WHEN attendence_percentage BETWEEN 75 AND 89 THEN 'Good' ELSE 'Needs Improvement' END AS attendance_category FROM the.attendence.table;
