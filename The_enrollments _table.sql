-- Exercise 3: The enrollment table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.enrollments;

-- Creating the Table
CREATE TABLE IF NOT EXISTS the.enrollments.table (
  enrollment_id INT,
  student_id INT,
  course_id INT, 
  grade INT
);

-- Loading information into the Table
INSERT INTO the.enrollments.table VALUES
(1, 1, 101, 95), 
(2, 1, 102, 85), 
(3, 2, 103, 75), 
(4, 2, 104, 80), 
(5, 3, 105, 90);

-- Question 9: Get the maximum, minimum and average grade across all the enrollments
SELECT MAX(grade) AS max_grade, MIN(grade) AS min_grade, AVG(grade) AS avg_grade FROM the.enrollments.table;

-- Question 10: Count how many enrollments exists per course.
SELECT course_id, COUNT(enrollment_id) AS enrollment_count FROM the.enrollments.table GROUP BY course_id;
