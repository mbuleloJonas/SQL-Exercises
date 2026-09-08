-- Exercise 1; Selecting & Sorting


-- Creating a database/catalog
CREATE CATALOG IF NOT EXISTS employees;


-- Creating a schema
CREATE SCHEMA IF NOT EXISTS employees.table;


-- Creating a table
CREATE TABLE IF NOT EXISTS employees.table.salary
(id INT,
first_name STRING,
last_name STRING,
department STRING,
salary INT,
hire_date DATE,
city STRING);


-- Inserting data into the table
INSERT INTO employees.table.salary
VALUES
(1, 'Alice', 'Green', 'IT', 70000, '2020-01-10', 'Johannesburg'),
(2, 'Brian', 'Lee', 'HR', 45000, '2019-03-22', 'Cape Town'),
(3, 'Cathy', 'Zulu', 'Finance', 65000, '2018-07-18', 'Durban'),
(4, 'David', 'Mokoena', 'Marketing', 50000, '2021-11-05', 'Pretoria'),
(5, 'Eva', 'Naidoo', 'IT', 72000, '2017-09-30', 'Johannesburg');


-- Question 1: Retrieve all the columns from the table
SELECT* FROM employees.table.salary;


-- Question 2: Find all unique departments
SELECT DISTINCT department FROM employees.table.salary;


-- Question 3: Retrieve first and last names ordered by salary descending
SELECT first_name, last_name FROM employees.table.salary ORDER BY salary DESC;


-- Question 4: Retrive the top 3 highest_paid employees
SELECT id, first_name, last_name, salary FROM employees.table.salary ORDER BY salary DESC LIMIT 3;


-- Filtering with Where


-- Question 5: Frind employees in the IT field
SELECT id, first_name, last_name, department FROM employees.table.salary WHERE department IN ('IT');


-- Question 6: Find employees in Finance with salary>60000
SELECT id, first_name, last_name, department, salary FROM employees.table.salary WHERE department IN ('Finance') AND salary>60000;


-- Question 7: Find employees in HR or Marketing
SELECT id, first_name, last_name, department FROM employees.table.salary WHERE department IN ('HR', 'Marketing');


-- Question 8: Find employees not IN IT
SELECT id, first_name, last_name, department FROM employees.table.salary WHERE department NOT IN ('IT');


-- Question 9: Find employees in IT, HR OR Finance using IN
SELECT id, first_name, last_name, department FROM employees.table.salary WHERE department in ('IT', 'HR', 'Finance');


-- Question 10: Find employees in IT with salary > 65000 city Johannesburg
SELECT first_name, last_name, salary, city FROM employees.table.salary WHERE department IN ('IT') AND salary > 65000 AND city IN ('Johannesburg');
