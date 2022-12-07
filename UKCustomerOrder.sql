USE Northwind

SELECT 
c.CustomerID,CompanyName,ContactName,City, OrderID,OrderDate
FROM
dbo.Customers AS c
JOIN
dbo.Orders AS o


ON
c.CustomerID=o.CustomerID
WHERE Country = 'UK'
ORDER BY CompanyName,OrderDate