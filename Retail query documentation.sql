This is a .sql file to document the join commands used in querying retail company database tables.



1. INNER JOIN: Returns records that have matching values in both tables.
( this SQL query is to fetch specific columns of data from the Orders and Customers tables, join them based on a common customer ID, and present the combined data in a result set.)

# the query
SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID; ;

2. LEFT JOIN: Returns all records from the left table, and the matched records from the right table.
(is used to combine rows from the left table (Orders) with matching rows from the right table (Customers) based on a specified condition (Orders.CustomerID = Customers.CustomerID)).

# the query
SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

3. RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
(The RIGHT JOIN operation ensures that all rows from the right table (Customers) are included in the result set, regardless of whether there is a matching row in the left table (Orders) or not).

# the query
SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate
FROM Orders RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

4. CROSS JOIN: Returns all records from both tables

# the query
SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName, Customers.Country, Orders.OrderDate
FROM Orders CROSS JOIN Customers;


