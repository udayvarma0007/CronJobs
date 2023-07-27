USE job5;

-- Create a table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2)
);

-- Insert data into the table
INSERT INTO employees (id, name, age, salary)
VALUES (1, 'uday', 30, 50000),
       (2, 'varma', 25, 45000),
       (3, 'sai', 35, 60000);

-- Update records in the table
UPDATE employees
SET salary = 55000
WHERE id = 1;

-- Delete records from the table
DELETE FROM employees
WHERE id = 2;

