-- Step 1: Create Tables
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    price DECIMAL(10,2)
);

CREATE TABLE Exports (
    export_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    export_country TEXT
);

-- Step 2: Insert Sample Data
INSERT INTO Customers VALUES
(1, 'Aaron Corp', 'USA'),
(2, 'Andrew Orman', 'UK'),
(3, 'Alex Jordan', 'Canada'),
(4, 'Brian Smith', 'Germany');

INSERT INTO Products VALUES
(101, 'Laptop', 1200.00),
(102, 'Smartphone', 800.00),
(103, 'Tablet', 600.00);

INSERT INTO Exports VALUES
(1, 1, 101, 'India'),
(2, 2, 102, 'Australia'),
(3, 3, 103, 'Qatar'),
(4, 4, 101, 'Japan');

-- Step 3: Find Customers (Harish’s condition)
SELECT * FROM Customers
WHERE name LIKE 'A%' AND name LIKE '%or%';

-- Step 4: Aggregate Queries

-- Count how many exports each customer has
SELECT customer_id, COUNT(*) AS total_exports
FROM Exports
GROUP BY customer_id;

-- Average product price (overall)
SELECT AVG(price) AS average_price
FROM Products;

-- Maximum product price
SELECT MAX(price) AS max_price
FROM Products;

-- Export countries grouped by customer
SELECT customer_id, GROUP_CONCAT(DISTINCT export_country) AS countries
FROM Exports
GROUP BY customer_id;
