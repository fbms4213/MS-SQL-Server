-- Variable

DECLARE @num1 int = 42
SELECT @num1

DECLARE @num2 AS int = 41
SELECT @num2
PRINT  @num2






DECLARE @num3 int = 10
PRINT @num3

SET @num3 = 15
PRINT @num3





DECLARE @num4 int = 10, @num5 int = 7
PRINT @num4 + @num5


DECLARE @num6 int = 10
PRINT 'Result: ' + CONVERT(nvarchar(2), @num6)



DECLARE @Authors int
SELECT @Authors = COUNT(*) FROM Authors
PRINT @Authors



-- TASK: PRINT
-- Menim adim "name", yashim "CurrentDate - DateOfBirth" budur
-- ve boyum "height" bu qederdi.