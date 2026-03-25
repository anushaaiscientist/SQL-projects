-- Project: Employee Data Analysis

-- Find highest average salary department
SELECT department,AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;

-- Find lowest average salary department
SELECT department,AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary ASC
LIMIT 1;
