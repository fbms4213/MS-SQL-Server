SELECT * FROM Products


SELECT ProductID, ProductName, UnitPrice
FROM Products




SELECT * FROM Employees


SELECT FirstName + ' ' + LastName AS FullName FROM Employees
--SELECT FirstName + ' ' + LastName FullName FROM Employees



SELECT FirstName + ' ' + LastName AS FullName FROM Employees


SELECT CAST(EmployeeID AS nvarchar) + ' ' + FirstName AS Result FROM Employees
SELECT CAST(EmployeeID AS char(3)) + ' ' + FirstName AS Result FROM Employees
SELECT CONVERT(char(3), EmployeeID) + ' ' + FirstName AS Result FROM Employees
SELECT STR(EmployeeID, 5) AS Result FROM Employees
SELECT LTRIM(STR(EmployeeID, 5)) AS Result FROM Employees  



SELECT TOP 5 ProductName, UnitPrice FROM Products
SELECT TOP 10 PERCENT ProductName, UnitPrice FROM Products




SELECT ProductName, UnitPrice 
FROM Products
ORDER BY UnitPrice ASC



SELECT TOP 1 WITH TIES CategoryID 
FROM Products
ORDER BY CategoryID DESC




SELECT DISTINCT City FROM Employees