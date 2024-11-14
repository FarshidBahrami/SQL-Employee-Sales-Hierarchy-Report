# SQL: Employee Sales Hierarchy Report

## Explanation of Available Tables:
### 1. employees Table:
This table contains information about the employees in the organization. It allows us to know who works where, and who reports to whom.

Columns:
employee_id: A unique identifier for each employee.
employee_name: The name of the employee.
manager_id: The employee ID of the employee's manager. A NULL value indicates a top-level manager (i.e., the employee has no manager).

### 2. sales Table:
This table stores the sales information. Each sale is linked to a specific employee (sales representative).

Columns:
sales_rep_id: The ID of the employee who made the sale (links to employee_id in the employees table).
amount: The value of the sale.
customer_id: A unique identifier for the customer involved in the transaction.
