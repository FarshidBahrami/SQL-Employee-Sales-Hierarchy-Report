CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    manager_id INT REFERENCES employees(employee_id)
);

INSERT INTO employees (employee_name, manager_id) VALUES
    ('Alice', NULL),          -- CEO (top-level manager)
    ('Bob', 1),               -- Reports to Alice
    ('Charlie', 1),           -- Reports to Alice
    ('David', 2),             -- Reports to Bob
    ('Eva', 2),               -- Reports to Bob
    ('Frank', 3),             -- Reports to Charlie
    ('Grace', 3),             -- Reports to Charlie
    ('Hannah', 4),            -- Reports to David
    ('Isaac', 4),             -- Reports to David
    ('Jack', 5);              -- Reports to Eva

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    sales_rep_id INT REFERENCES employees(employee_id),
    customer_id INT,
    amount DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO sales (sales_rep_id, customer_id, amount, sale_date) VALUES
    (2, 101, 1500.00, '2024-01-15'),
    (3, 102, 2000.00, '2024-02-20'),
    (4, 103, 750.00, '2024-03-12'),
    (4, 104, 1200.00, '2024-03-15'),
    (5, 105, 500.00, '2024-04-10'),
    (6, 106, 1800.00, '2024-05-22'),
    (7, 107, 2300.00, '2024-06-05'),
    (8, 108, 800.00, '2024-07-18'),
    (9, 109, 950.00, '2024-08-30'),
    (10, 110, 400.00, '2024-09-14'),
    (2, 111, 3000.00, '2024-10-05'),
    (3, 112, 1000.00, '2024-10-21'),
    (7, 113, 1750.00, '2024-11-02'),
    (6, 114, 2200.00, '2024-11-11');

-- Check employees data
SELECT * FROM employees;

-- Check sales data
SELECT * FROM sales;