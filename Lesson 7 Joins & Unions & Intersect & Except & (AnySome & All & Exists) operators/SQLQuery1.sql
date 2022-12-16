-- Mundericat -- JOINs



---------------------------------------------
-- NOTE: {Optional} 



---------------------------------------------
-- Implicit join (SQL-89)(with WHERE)
-- Explicit join (SQL-92)(JOINs)



---------------------------------------------
-- Horizontal join
-- Vertiacal  join



---------------------------------------------
---- Horizontal joins




-- JOINs
-- 1) CROSS JOIN
-- 2) {INNER} JOIN
-- 3) OUTER JOIN 
		-- 3.1) LEFT {OUTER} JOIN
		-- 3.2) RIGHT {OUTER} JOIN
		-- 3.3) FULL {OUTER} JOIN




---- Vertiacal joins

-- UNION {ALL}
-- INTERSECT
-- EXCEPT




---- Operators
-- 1) ANY|SOME 
-- 2) ALL
-- 3) EXISTS









---------------------------------------------
---- Horizontal joins





-- CROSS JOIN
SELECT * FROM Books, Teachers
SELECT * FROM Books CROSS JOIN Teachers





---------------------------------------------
-- INNER JOIN

SELECT * FROM Books
INNER JOIN Authors ON Id_Author = Authors.Id



SELECT FirstName, [Name] AS BookName
FROM Books
JOIN Authors ON Id_Author = Authors.Id



SELECT FirstName, Books.[Name] AS [Name of book], Categories.[Name] AS [Name of category]
FROM Books 
JOIN Authors ON Id_Author = Authors.Id
JOIN Categories ON Id_Category = Categories.Id




---------------------------------------------
-- OUTER JOINs (LEFT, RIGTH, FULL)


-- LEFT JOIN

SELECT * FROM Students
LEFT OUTER JOIN S_Cards ON Students.Id = Id_Student


SELECT FirstName, LastName FROM Students
LEFT JOIN S_Cards ON Students.Id = Id_Student
WHERE S_Cards.Id IS NULL




-- RIGTH JOIN

SELECT * FROM T_Cards
RIGHT JOIN Teachers ON Teachers.Id = Id_Teacher





-- FULL JOIN

SELECT * FROM T_Cards
FULL JOIN Teachers ON Teachers.Id = Id_Teacher






---------------------------------------------
---- Vertiacal joins

-- Same data types
-- Same column count
-- ORDER BY only 1 time
-- First table column name



-- UNION {ALL}


SELECT * FROM S_Cards
UNION
SELECT * FROM T_Cards


SELECT Id_Book FROM S_Cards
UNION ALL
SELECT Id_Book FROM T_Cards
ORDER BY Id_Book





-- INTERSECT

SELECT Id_Book FROM S_Cards
INTERSECT
SELECT Id_Book FROM T_Cards





-- EXCEPT

SELECT Id_Book FROM S_Cards
EXCEPT
SELECT Id_Book FROM T_Cards







---------------------------------------------
---- Operators

-- 1) ANY|SOME 
-- 2) ALL
-- 3) EXISTS




-- ANY|SOME

SELECT * FROM Books
WHERE Id = ANY(SELECT Id_Book FROM S_Cards)





-- ALL

SELECT * FROM Northwind.dbo.Products
WHERE UnitPrice < ALL(SELECT AVG(UnitPrice) FROM Northwind.dbo.[Order Details])
ORDER BY UnitPrice





-- EXISTS

SELECT * FROM Students
WHERE EXISTS(SELECT * FROM S_Cards WHERE Students.Id = Id_Student)



-- 1. Hər Publisherin ən az səhifəli kitabını ekrana çıxarın

SELECT * FROM Books
RIGHT JOIN(SELECT Id_Press, MIN(Pages) AS MinPages FROM Press
JOIN Books ON Press.Id = Books.Id_Press
GROUP BY Id_Press) AS SubQuery
ON Books.Id_Press = SubQuery.Id_Press
WHERE SubQuery.MinPages = Books.Pages





-- 2. Publisherin ümumi çap etdiyi kitabların orta səhifəsi 100dən yuxarıdırsa, o Publisherləri ekrana çıxarın.


SELECT * FROM Press
WHERE Id = ANY
(SELECT Id_Press FROM Press
JOIN Books ON Press.Id = Books.Id_Press
GROUP BY Id_Press
HAVING AVG(Pages) > 400)