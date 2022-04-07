-- 1.Desgin the above database with following table by applying Primary key and Foreign key

-- OrderItem Table
create table OrderItem(id int PRIMARY KEY, OrderId int, ProductId int, UnitPrice decimal(12,2), Quantity int);

-- Product Table
create table Product(id int PRIMARY KEY, ProductName nvarchar(50), UnitPrice decimal(12,2), Package nvarchar(30), isDiscontinued bit);

-- Orders Table
CREATE TABLE Orders (id int PRIMARY KEY, OrderDate DATETIME, OrderNumber nvarchar(10), CustomerId int, TotalAmount decimal(12,2))

-- Customer Table
CREATE TABLE Customer (id int PRIMARY KEY, FirstName nvarchar(40),LastName nvarchar(40),City nvarchar(40), Country nvarchar(40),Phone nvarchar(20));

--Adding Primary & Foreign Key
ALTER TABLE Orderitem
ADD FOREIGN KEY(ProductId) REFERENCES Product(id);

ALTER TABLE Orderitem
ADD FOREIGN KEY(ProductId) REFERENCES Product(id);

ALTER TABLE Orders
ADD FOREIGN KEY(CustomerId) REFERENCES Customer(id);

-- 2.Insert Records in all tables 
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(101, 'Laptop', 55400.00, 'yes', 0);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(102, 'Mobile', 22000.00, 'no', 1);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(103, 'Earpods', 3000.00, 'no', 0);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(104, 'Headset', 2000.00, 'yes', 1);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(105, 'Smartwatch', 5000.00, 'yes', 0);

INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(201, 11-01-2015, 'ODN1', 1, 2100.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(202, 12-02-2016, 'ODN2', 2, 3000.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(203, 13-03-2017, 'ODN3', 3, 4000.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(204, 14-04-2018, 'ODN4', 4, 1500.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(205, 15-05-2019, 'ODN5', 5, 5000.00);

Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (301, 201, 101, 
2200.00, 2);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (302, 202, 102, 
2800.00, 4);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (303, 203, 103, 
3200.00, 8);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (304, 204, 104, 
4522.00, 10);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (305, 205, 105, 
8956.00, 5);

INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (1,'Kalpesh', 'xyz', 'Mumbai', 'India', '1234567890')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (2, 'Dhiraj', 'qwery', 'PUNE', 'India', '2345678912')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (3,'Bhuvana', 'asdfg', 'PARIS', 'FRANCE', '125478932')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (4,'Chetan', 'ghijkl', 'BERLIN', 'GERMANY', '9874563210')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (5,'Sai', 'poiuyt', 'Warangal', 'India', '6547893210')

-- 4.In Order table OrderDate should not accept null value
ALTER TABLE Customer 
ALTER Column FirstName nvarchar(40) NOT NULL;

-- 5.Display all customer details
ALTER TABLE Orders
ALTER COLUMN OrderDate datetime NOT NULL;



-- 6.write a query to display Country whose name starts with A or I

Select * from Customer WHERE Country LIKE 'i%' or Country LIKE 'a%'


-- 7 .write a query to display whose name of customer whose third character is i

Select * from Customer WHERE FirstName LIKE '__i%'