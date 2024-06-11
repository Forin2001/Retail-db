This documents the process it took to execute this project using PostgreSQL.

In this project two tables were used "Customers" and "Orders" for the retail companies database.

#Creating the tables.

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Country VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

#importing the values into the tables.

(this command was used to import a data set from a csv this applies to both tables)

1. \COPY Orders (OrderID, CustomerID, OrderDate) FROM 'C:/Users/edwin/orders.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
2. \COPY Customers (CustomerID, CustomerName, ContactName,Country) FROM 'C:/Users/edwin/customers.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');

# Queries used to perform the join the functions.

1. INNER JOIN: Returns records that have matching values in both tables.
   SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate
   FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
   
2. LEFT JOIN: Returns all records from the left table, and the matched records from the right table.
   SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate FROM Orders
   LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

3. RIGHT JOIN: Returns all records from the right table, and the matched records from the left table.
  SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate
  FROM Orders RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

4. CROSS JOIN: Returns all records from both tables.
  SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate
  FROM Orders CROSS JOIN Customers;
