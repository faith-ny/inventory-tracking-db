-- Inventory Tracking System - SQL Setup
-- Author: Faith Nyambura
-- Description: Full database for managing inventory, products, suppliers, categories, and transactions

-- ========================
-- 1. Category Table
-- ========================
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100) NOT NULL UNIQUE
);

-- ========================
-- 2. Supplier Table
-- ========================
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    SupplierName VARCHAR(100) NOT NULL,
    ContactEmail VARCHAR(100),
    Phone VARCHAR(20)
);

-- ========================
-- 3. Products Table
-- ========================
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL UNIQUE,
    CategoryID INT,
    SupplierID INT,
    QuantityInStock INT NOT NULL DEFAULT 0,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- ========================
-- 4. Inventory Transactions Table
-- ========================
CREATE TABLE InventoryTransactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT NOT NULL,
    TransactionType ENUM('IN', 'OUT') NOT NULL,
    Quantity INT NOT NULL,
    TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
