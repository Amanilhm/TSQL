USE Northwind

SELECT CompanyName, COUNT(o.OrderID) AS NumOrders,MIN(OrderDate) AS MinDate
FROM
dbo.Orders as o
RIGHT OUTER JOIN
dbo.Customers AS c
ON
c.CustomerID = o.CustomerID
GROUP BY CompanyName 
ORDER BY NumOrders