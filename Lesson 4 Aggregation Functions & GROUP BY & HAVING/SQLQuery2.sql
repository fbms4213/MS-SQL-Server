-- Aggregation Functions

--DECLARE @count AS int

--SELECT @count = COUNT(*) FROM Books
--WHERE Category = 'Windows 98'

--PRINT @count





SELECT COUNT(*) FROM Books
WHERE Category = 'Windows 98'



SELECT SUM(Price) AS TotalPrice FROM Books
WHERE Category = 'Windows 98'


SELECT SUM(Price) AS TotalPrice, COUNT(Price) AS [Count] FROM Books
WHERE Category = 'Windows 98'




SELECT MAX(Price) AS [MaxPrice], MIN(Price) AS [MinPrice] FROM Books
WHERE Category = 'Windows 98'




SELECT AVG(Price) AS AveragePrice FROM Books
WHERE Category = 'Windows 98'


SELECT * FROM Books


SELECT COUNT(DISTINCT Category) AS UniqueCategories FROM Books



-- {Optional}


-- SELECT
-- {FROM}
-- {WHERE}
-- {GROUP BY}
-- {HAVING}
-- {ORDER BY}




-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- SELECT
-- ORDER BY




SELECT Category, COUNT(Category) AS CountCategory FROM Books
WHERE Category IS NOT NULL
GROUP BY Category
HAVING COUNT(Category) > 10
ORDER BY CountCategory DESC




SELECT Publisher, COUNT([Name]) AS [Count of Pages], SUM(Price) AS [Sum of Price], AVG(Pages) AS [Avg of Pages]
FROM Books
GROUP BY Publisher
ORDER BY [Sum of Price] DESC