-- WHERE Clause


-- Operators
-- > Greater than
-- < Less than
-- >=
-- <=
-- =  Equal
-- !> NOT Greater
-- !< NOT Less
-- <> NOT Equal
-- != NOT Equal





SELECT UnitPrice FROM Products
WHERE UnitPrice > 10 AND UnitPrice <= 30



SELECT ProductID, UnitPrice FROM Products
WHERE UnitPrice = 10


SELECT ProductID, UnitPrice FROM Products
WHERE UnitPrice !> 10


SELECT ProductID, UnitPrice FROM Products
WHERE UnitPrice <> 10




SELECT * FROM Products
WHERE ProductName = 'Chang'



SELECT * FROM Products
WHERE LEN(ProductName) > 10



SELECT * FROM [Northwind].[dbo].[Products]




SELECT * FROM Employees
WHERE YEAR(BirthDate) = 1948



SELECT * FROM Employees
WHERE MONTH(BirthDate) = 12



SELECT * FROM Employees
WHERE DAY(BirthDate) = 8




SELECT * FROM Employees
WHERE BirthDate = '1948-12-08'



SELECT * FROM Employees
WHERE EmployeeID = 1 OR City = 'London'


SELECT * FROM Employees
WHERE EmployeeID = 1 AND LastName = 'Davolio'




SELECT TitleOfCourtesy, ReportsTo
FROM Employees
ORDER BY TitleOfCourtesy ASC, ReportsTo DESC





-- IS NULL, IS NOT NULL

SELECT * FROM Employees
WHERE REGION IS NULL


SELECT * FROM Employees
WHERE REGION IS NOT NULL







-- IN, BETWEEN, LIKE





SELECT * FROM Products
WHERE UnitPrice IN(18, 21, 6)


SELECT * FROM Products
WHERE UnitPrice NOT IN(18, 21, 6)
--ORDER BY UnitPrice



SELECT * FROM Products
WHERE UnitPrice BETWEEN 26 AND 30


SELECT * FROM Products
WHERE UnitPrice NOT BETWEEN 26 AND 30
--ORDER BY UnitPrice




SELECT * FROM Products
WHERE ProductName NOT LIKE 't____%e'


SELECT * FROM Products
WHERE ProductName LIKE 't%e'