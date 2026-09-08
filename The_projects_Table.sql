-- Exercise 5: The projects table

-- Creating a Catalog/Database
CREATE CATALOG IF NOT EXISTS the;

-- Creating a Schema
CREATE SCHEMA IF NOT EXISTS the.projects;

-- Creating a Table
CREATE TABLE IF NOT EXISTS the.projects.table (
 project_id INT,
 project_name STRING,
 department STRING,
  budget INT
);

-- Loading data into the table
INSERT INTO the.projects.table VALUES 
 (1, 'AI App', 'IT', 120000),
 (2, 'Payroll System', 'Finance', 80000),
 (3, 'Dashboard', 'IT', 150000),
 (4, 'Website', 'Marketing', 60000),
 (5, 'HR Portal', 'HR', 50000);

-- Question 14: Show total and average budget per department. Only include department with average budget above 70000
SELECT department, SUM(budget) AS total_budget, AVG(budget) AS avg_budget FROM the.projects.table GROUP BY department HAVING avg_budget > 70000;

-- Question 15: List all projects with budgets between 50000 and 120000, excluding the marketing department
SELECT project_id, project_name, department, budget FROM the.projects.table WHERE budget BETWEEN 50000 AND 120000 AND department !='Marketing';
