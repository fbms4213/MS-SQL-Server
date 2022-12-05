SELECT GETDATE() AS [DateTime]
SELECT GETDATE() [DateTime]


SELECT 'Emin' AS FirstName


SELECT LastName
FROM Students
WHERE MONTH(GETDATE()) = 12
--WHERE YEAR(GETDATE()) = 2022
--WHERE DAY(GETDATE()) = 8




-- Single line comment

/*
	Multi-line
	comment
*/



SELECT 5 + 5 AS [Sum]




DECLARE @num1 AS int = 5
DECLARE @num2 AS int = 7

PRINT @num1 + @num2
SELECT @num1 + @num2 AS [Sum]
SELECT SUM(@num1 + @num2) AS [Sum]
