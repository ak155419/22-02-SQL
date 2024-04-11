CREATE TABLE Customers (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Orders(CustomerID)
);
 
INSERT INTO Customers (OrderID, CustomerID, OrderDate) VALUES
(10308, 2, '1996-09-18'),
(10309, 37, '1996-09-19'),
(10310, 77, '1996-09-20');

CREATE TABLE Orders (
    CustomerID INT PRIMARY KEY,
    CustomerName TEXT,
    ContactName TEXT,
    Country TEXT
);
 
INSERT INTO Orders (CustomerID, CustomerName, ContactName, Country) VALUES
(2, 'Ana', 'Trujillo', 'Mexiko'),
(1, 'Afreds Futterkiste', 'Maria Anders', 'Germany'),
(3, 'Antoni Moreno Taqueria', 'Antoni Moreno', 'Mexiko');