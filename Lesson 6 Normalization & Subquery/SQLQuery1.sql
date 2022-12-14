--SELECT * FROM Employees
--WHERE EndDate  IS NOT NULL 


--UPDATE Employees
--SET EndDate = (
--	SELECT TOP 1 History.EndDate FROM History
--	WHERE History.EndDate IS NOT NULL 
--	AND Employees.BusinessEntityID = History.BusinessEntityID)



-- Normalizatain
-- 1NF (First Normal Form)
-- 2NF (Second Normal Form)
-- 3NF (Third Normal Form)
-- Boyce-Codd Normal Form (3.5NF)
-- 4NF (Fourth Normal Form)
-- 5NF (Fifth Normal Form)
-- Domain-key Normal Form (5.5NF)
-- 6NF (Sixth Normal Form)





-- SubQuery


SELECT * FROM Products
WHERE CategoryID = (SELECT CategoryID FROM Categories
WHERE CategoryName = 'Seafood')



SELECT ProductName, UnitPrice, (SELECT CategoryName FROM Categories WHERE CategoryID = Products.CategoryID) AS CategoryName 
FROM Products







-- ANY, ALL, EXISTS