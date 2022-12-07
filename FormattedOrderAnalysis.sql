USE Northwind;

SELECT
	c.CompanyName,
	COUNT(o.OrderID) AS NumOrders,
	ISNULL(CAST(MIN(o.OrderDate) AS VARCHAR(50)),'None placed') AS MinDate
FROM
	dbo.Customers AS c
LEFT JOIN
	dbo.Orders AS o
ON
	o.CustomerID = c.CustomerID
GROUP BY
	c.CompanyName
ORDER BY
	NumOrders