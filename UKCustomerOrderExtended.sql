USE Northwind

SELECT 
c.CustomerID,CompanyName,ContactName, o.OrderID,OrderDate,od.ProductID,p.ProductName, od.Quantity,p.CategoryID,cat.CategoryName
FROM
dbo.Customers AS c
JOIN
dbo.Orders AS o
ON
c.CustomerID=o.CustomerID
JOIN
dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
JOIN
dbo.Products AS p
ON od.ProductID = p.ProductID
JOIN
dbo.Categories AS cat
ON p.CategoryID=cat.CategoryID
WHERE  Country = 'UK' AND CategoryName = 'Seafood'
ORDER BY CompanyName,OrderDate

