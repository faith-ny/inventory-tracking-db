# Inventory Tracking System 

## Description
A MySQL-based Inventory Management System that tracks products, suppliers, categories, and inventory movements (stock in/out).

## How to Run the Project
1. Clone this repository or download the files.
2. Open MySQL Workbench or phpMyAdmin.
3. Import and run the `inventory_tracking.sql` file to create the database.

## ERD
An Entity-Relationship Diagram shows:
- Categories → Products (1:M)
- Suppliers → Products (1:M)
- Products → Inventory Transactions (1:M)


## Files
- `inventory_tracking.sql` – contains the SQL schema
- `README.md` – this documentation
