CREATE DATABASE Project;
USE Project;

CREATE TABLE Orders(
OrderID VARCHAR(20),
OrderDate DATE,
CustomerID VARCHAR(20),
ProductID VARCHAR(20),
Region VARCHAR(50),
Quantity INT
);

CREATE TABLE Products (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    CostPrice DECIMAL(10,2),
    SellingPrice DECIMAL(10,2)
);

CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Segment VARCHAR(50)
);

#Top 10 products

SELECT
ProductID,
SUM(Quantity) AS TotalSold
FROM Orders
GROUP BY ProductID
ORDER BY TotalSold DESC
LIMIT 10;

#Revenue by Reigion

SELECT
    o.Region,
    SUM(p.SellingPrice * o.Quantity) AS TotalRevenue
FROM Orders o
JOIN Products p
    ON o.ProductID = p.ProductID
GROUP BY o.Region
ORDER BY TotalRevenue DESC;

# Highest profit category

SELECT
    p.Category,
    SUM((p.SellingPrice - p.CostPrice) * o.Quantity) AS TotalProfit
FROM Orders o
JOIN Products p
    ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalProfit DESC;


CREATE TABLE Orders (
    OrderID VARCHAR(20),
    OrderDate DATE,
    CustomerID VARCHAR(20),
    ProductID VARCHAR(20),
    Region VARCHAR(50),
    Quantity INT,
    Discount INT,
    DeliveryDays INT,
    Rating INT
);
 
 CREATE TABLE `Orders` (
    `OrderID`	VARCHAR(512),
    `OrderDate`	VARCHAR(512),
    `CustomerID`	VARCHAR(512),
    `ProductID`	VARCHAR(512),
    `Region`	VARCHAR(512),
    `Quantity`	INT,
    `Discount`	INT,
    `DeliveryDays`	INT,
    `Rating`	INT
);
