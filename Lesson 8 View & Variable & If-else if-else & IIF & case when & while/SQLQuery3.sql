-- IF-ELSE IF-ELSE
-- IIF
-- CASE WHEN THEN ELSE





---------------------------------------------
-- IF
-- ELSE IF
-- ELSE


DECLARE @num1 int = 10, @num2 int = 9


IF @num1 > @num2
	BEGIN
		PRINT '@num1 greater than @num2'
		PRINT 'multiline'
	END
ELSE IF @num1 = @num2
	PRINT '@num1 = @num2'
ELSE
	PRINT '@num1 less than @num2'




---------------------------------------------
-- IIF


DECLARE @num3 int = 9, @num4 int = 10
PRINT IIF(@num3 > @num4, 'Hakuna', 'Matata') 



SELECT * FROM Products



-- TASK: ProductName, Category, UnitPrice, Discontinued (True, False)
-- NOTE: If Discontinued = 1, True, else False (ColumnName)
-- NOTE: With VIEW





---------------------------------------------
-- CASE-WHEN-THEN
-- ELSE


-- There are two types of CASE statement, SIMPLE and SEARCHED.





-- Example 1 (SIMPLE CASE)
SELECT FirstName, TitleOfCourtesy, Title FROM Employees


SELECT FirstName,
CASE TitleOfCourtesy
	WHEN 'Ms.' THEN 'Miss'
	WHEN 'Dr.' THEN 'Doctor'
	WHEN 'Mrs.' THEN 'Miss'
	WHEN 'Mr.' THEN 'Mister'
	ELSE 'Empty'
END AS Courtesy, Title
FROM Employees






-- Example 2 (SEARCHED CASE)

SELECT FirstName, LastName, BirthDate, City FROM Employees


-- TASK: BirthDate of employee : spring autumn summer winter
-- FirstName, LastName, Season, City


SELECT FirstName, LastName, 
CASE
	WHEN MONTH(BirthDate) < 3 OR MONTH(BirthDate) = 12 THEN 'Winter'
	WHEN MONTH(BirthDate) BETWEEN 3 AND 6 THEN 'Spring'
	WHEN MONTH(BirthDate) IN(6, 7, 8) THEN 'Summer'
	WHEN MONTH(BirthDate) >=9 AND MONTH(BirthDate) < 12 THEN 'Autumn'
END AS Season, BirthDate
City FROM Employees
