CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ContactName VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES
    (1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
    (2, 'Ana Trujillo', 'Ana Trujillo', 'Mexico'),
    (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico');
    
    CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

select * from Customers;

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
    (10308, 2, '1996-09-18'),
    (10309, 37, '1996-09-19'),
    (10310, 77, '1996-09-20');
    
    select * from Orders;
select c.*,o.* from Customers c inner join Orders o on c.customerid=o.customerid;
select c.*,o.* from Customers c cross join Orders o on c.customerid=o.customerid;
select c.*,o.* from Customers c left join Orders o on c.customerid=o.customerid;
select c.*,o.* from Customers c right join Orders o on c.customerid=o.customerid;
select c.*,o.* from Customers c inner join Orders o on c.customerid=o.customerid;
