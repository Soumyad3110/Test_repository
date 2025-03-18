-- Create the table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    city TEXT,
    salary INTEGER
);

-- Import the CSV data into the table

.mode 
csv.import employee_data_sql.csv employees

SELECT * FROM employees WHERE city = 'Pune';

SELECT city, AVG(salary) AS average_salary FROM employees GROUP BY city;

SELECT * FROM employees WHERE age > 50;

SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary FROM employees;

SELECT city, COUNT(*) AS employee_count FROM employees GROUP BY city;

SELECT * FROM employees WHERE salary > 70000;

SELECT * FROM employees ORDER BY salary DESC;

SELECT AVG(age) AS average_age FROM employees;

SELECT SUM(salary) AS total_salary_expenditure FROM employees;

