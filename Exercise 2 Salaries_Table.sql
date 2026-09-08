-- Exercise 4: The salaries table

-- Creating a Database/Catalog
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.salaries;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.salaries.table(
  employee_id INT,
  name STRING,
  department STRING,
  salary INT,
  bonus INT
);

-- Inserting data into the table
INSERT INTO the.salaries.table VALUES 
(1, 'Tom', 'IT', 60000, 5000),
(2, 'Jerry', 'HR', 55000, 4000),
(3, 'Spike', 'Finance', 70000, 6000),
(4, 'Tyke', 'IT', 62000, 5500),
(5, 'Butch', 'HR', 54000, 3500);

-- Question 11: Find total salary and total bonus per department
SELECT department, SUM(salary) AS total_salary, SUM(bonus) AS total_bonus FROM the.salaries.table GROUP BY department;

-- Question 12: Show department where average salary is above 55000
SELECT department, AVG(salary) AS avg_salary FROM the.salaries.table GROUP BY department HAVING AVG(salary) > 55000;

-- Question 13: List employees whose salary plus bonus is greater than 60000
SELECT employee_id, name, salary, bonus, salary + bonus AS total FROM the.salaries.table WHERE salary + bonus > 60000;
