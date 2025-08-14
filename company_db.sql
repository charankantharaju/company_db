-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Step 2: Create Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    hire_date DATE,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Step 3: Insert Sample Records
INSERT INTO employees (first_name, last_name, email, hire_date, department, salary) VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-15', 'Engineering', 75000.00),
('Jane', 'Smith', 'jane.smith@example.com', '2022-09-20', 'Marketing', 65000.00),
('Alice', 'Johnson', 'alice.johnson@example.com', '2021-05-10', 'HR', 60000.00);

-- Step 4: Sample Query
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;
