- Exercise 3: CASE STATEMENTS: Employees Table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.employees;

-- Creating a Table
CREATE TABLE the.employees.table (
  employee_id INT,
  employee_name STRING,
  department STRING,
   salary INT
);

-- Inserting Data into the Table
INSERT INTO the.employees.table VALUES
(1, 'John', 'IT', 85000),
(2, 'Sara', 'HR', 60000),
(3, 'Mark', 'IT', 75000),
(4, 'Lucy', 'Finance', 95000),
(5, 'Tom', 'HR', 55000);

-- Categorize each employee's position level using both department and salary. If in 'IT' and salary > 80000 → 'Senior IT', If in 'HR' and salary > 55000 → 'Experienced HR', Otherwise → 'Staff'
SELECT employee_name, department, salary, CASE WHEN department IN ('IT') AND salary>80000 THEN 'Senior IT' WHEN department IN ('HR') AND salary>55000 THEN 'Experienced HR' ELSE 'Staff' END AS position_level FROM the.employees.table;
