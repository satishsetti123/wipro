/*Assignment 5: Demonstrate the creation of an index on a table 
and discuss how it improves query performance. Use a DROP INDEX statement 
to remove the index and analyze the impact on query execution.*/

create database temp2;
use temp2;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date) VALUES
(1, 'John', 'Doe', 'Engineering', 60000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'HR', 65000.00, '2019-03-10'),
(3, 'Alice', 'Johnson', 'Finance', 70000.00, '2018-07-23'),
(4, 'Robert', 'Smith', 'Engineering', 62000.00, '2021-11-30'),
(5, 'Michael', 'Brown', 'Marketing', 58000.00, '2022-02-14'),
(6, 'Emily', 'Davis', 'Engineering', 72000.00, '2017-04-21'),
(7, 'David', 'Wilson', 'Finance', 68000.00, '2016-09-05'),
(8, 'Linda', 'Clark', 'HR', 64000.00, '2019-12-11'),
(9, 'James', 'Lewis', 'Engineering', 63000.00, '2020-06-30'),
(10, 'Barbara', 'Walker', 'Marketing', 59000.00, '2021-01-19');

EXPLAIN SELECT * FROM employees WHERE last_name = 'Smith';

CREATE INDEX idx_last_name ON employees(last_name);
desc employees;

EXPLAIN SELECT * FROM employees WHERE last_name = 'Smith';

DROP INDEX idx_last_name on employees;
