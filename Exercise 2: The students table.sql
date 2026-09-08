-- Exercise 2: Students Table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.students;

-- Creating a table
CREATE TABLE IF NOT EXISTS the.students.tables 
(id INT, 
name STRING,
age INT,
department STRING);

-- Loading information into the table
INSERT INTO the.students.tables 
VALUES 
(1, 'Alice', 20, 'IT'), 
(2, 'Bob', 22, 'HR'), 
(3, 'Charlie', 21, 'IT'), 
(4, 'Diana', 23, 'Finance'),
(5, 'Eve', 22, 'HR');

-- Question 1: List all distinct departments in the students table
SELECT DISTINCT department FROM the.students.tables;

-- Question 2: Get the average age of the students per department
SELECT department, AVG(age) AS avg_age FROM the.students.tables GROUP BY department;

-- Question 3: Show departments with more than 1 student
SELECT department, COUNT(id) AS student_count FROM the.students.tables GROUP BY department HAVING COUNT(id) > 1;

-- Question 4: Get all students whose age between 21 AND 23
SELECT id, name, age, department FROM the.students.tables WHERE age BETWEEN 21 AND 23;

-- Question 5: List all students in the IT or HR department who are older than 21
SELECT id, name, age, department FROM the.students.tables WHERE department IN ('IT', 'HR') AND age>21;
