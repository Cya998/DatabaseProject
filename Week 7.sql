CREATE DATABASE NormDB;
USE NormDB;
CREATE TABLE ProductDetail (
OrderID INT,
CustomerName VARCHAR (20),
Products VARCHAR (50)
);
INSERT INTO ProductDetail (OrderID,CustomerName,Products)
VALUES
(101,'John Doe','Laptop,Mouse'),
(102,'Jane Smith','Tablet,Keyboard,Mouse'),
(103,'Emily Clark','Phone');
CREATE TABLE Customers (
CustomerID INT AUTO_INCREMENT PRIMARY KEY,
CustomerName VARCHAR (50)
);
CREATE TABLE Products (
ProductID INT AUTO_INCREMENT PRIMARY KEY,
Products VARCHAR (50)
);
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
ProductID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
foreign key (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Customers (CustomerName)
SELECT DISTINCT CustomerName
FROM ProductDetail;
INSERT INTO Products (Products)
SELECT DISTINCT  Products
FROM ProductDetail;
INSERT INTO Orders (OrderID)
SELECT DISTINCT OrderID
FROM ProductDetail;


CREATE TABLE OrderDetails (
OrderID INT,
CustomerName VARCHAR (50),
Product VARCHAR (30),
Quantity INT,
PRIMARY KEY(OrederID,CustomerName)
);
INSERT INTO OrderDetails (OrderID,CustomerName,Product,Quantity)
VALUES 
(101,'John Doe','Laptop',2),
(101,'John Doe','Mouse',1),
(102,'Jane Smith','Tablet',3),
(102,'Jane Smith','Keyboard',1),
(102,'Jane Smith','Mouse',2),
(103,'Emily Clark','Phone',1);
CREATE TABLE Customers2 (
CustomerID INT AUTO_INCREMENT PRIMARY KEY,
CustomerName VARCHAR (50)
);
CREATE TABLE Products2 (
ProductID INT AUTO_INCREMENT PRIMARY KEY,
Product VARCHAR(50)
);
CREATE TABLE Orders2 (
OrderID INT PRIMARY KEY,
ProductID INT,
Quantity INT,
CustomerID INT,
FOREIGN KEY (ProductID) REFERENCES Products2(ProductID),
FOREIGN KEY (CustomerID) REFERENCES Orders2(CustomerID)
);
INSERT INTO Customers2(CustomerName)
SELECT DISTINCT CustomerName
FROM OrderDetails;
INSERT INTO Products2(Product)
SELECT DISTINCT Product
FROM OrderDetails;
INSERT INTO Orders2(OrderID,Quantity)
SELECT DISTINCT OrderID,Quantity
FROM OrderDetails;



