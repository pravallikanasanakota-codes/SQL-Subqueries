-- Step 1: Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Step 2: Insert sample salary data
INSERT INTO employees VALUES
(1, 'Alice', 'IT', 60000),
(2, 'Bob', 'HR', 45000),
(3, 'Charlie', 'IT', 70000),
(4, 'David', 'Finance', 50000),
(5, 'Eva', 'HR', 48000);

-- --------------------------------------
-- NON-CORRELATED SUBQUERY
-- --------------------------------------

-- Step 3: Employees earning more than average salary
SELECT employee_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

-- --------------------------------------
-- SUBQUERY IN SELECT CLAUSE
-- --------------------------------------

-- Step 4: Show each employee with average salary
SELECT 
    employee_name,
    salary,
    (SELECT AVG(salary) FROM employees) AS average_salary
FROM employees;

-- --------------------------------------
-- SUBQUERY IN FROM CLAUSE
-- --------------------------------------

-- Step 5: Use subquery as derived table
SELECT department, avg_salary
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS dept_avg
WHERE avg_salary > 50000;

-- --------------------------------------
-- CORRELATED SUBQUERY
-- --------------------------------------

-- Step 6: Employees earning more than their department average
SELECT employee_name, department, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

-- --------------------------------------
-- SUBQUERY VS JOIN
-- --------------------------------------

-- Step 7: Same result using JOIN
SELECT e.employee_name, e.department, e.salary
FROM employees e
JOIN (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) d
ON e.department = d.department
WHERE e.salary > d.avg_salary;

-- --------------------------------------
-- SUBQUERY RETURNING MULTIPLE ROWS
-- --------------------------------------

-- Step 8: Employees from departments with avg salary > 50000
SELECT employee_name
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING AVG(salary) > 50000
);

-- --------------------------------------
-- DEBUGGING EXAMPLE
-- --------------------------------------

-- Incorrect (re
