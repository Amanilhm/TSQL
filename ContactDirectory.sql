USE Northwind

SELECT CompanyName,ContactName,Phone
FROM
dbo.Customers AS c
UNION ALL
SELECT CompanyName,ContactName,Phone
FROM
dbo.Suppliers AS s
UNION ALL
SELECT 'NorthWind',CONCAT(FirstName, ' ' ,LastName) AS FullName, Extension
FROM
dbo.Employees AS e
ORDER BY CompanyName

