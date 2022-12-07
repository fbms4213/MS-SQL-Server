-- DDL (CREATE, DROP, ALTER, TRUNCATE)
-- DML (SELECT, INSERT, UPDATE, DELETE)
-- DCL (GRAND, REVOKE, DENY)


SELECT GETDATE() AS [DateTime]
PRINT GETDATE()


CREATE DATABASE Academy
--DROP DATABASE Academy


USE Academy




CREATE TABLE Students(
	Id int PRIMARY KEY IDENTITY(1, 1),
	FirstName nvarchar(20) NOT NULL,
	LastName nvarchar(20) NOT NULL,
	[Group] nvarchar(15) NULL,
	Email nvarchar(25) NOT NULL,
	Gender bit NOT NULL,
	DateOfBirth date
)


--DROP TABLE Students





ALTER TABLE Students
ADD Score float NOT NULL


--ALTER TABLE Students
--DROP COLUMN Score



ALTER TABLE Students
ALTER COLUMN Score tinyint NOT NULL



--sp_rename 'Students.Score', 'NewScore', 'COLUMN'
--sp_rename 'Academy', 'NewAcademy', 'DATABASE'



ALTER TABLE Students
DROP CONSTRAINT PK__Students__3214EC075A999BE6



ALTER TABLE Students
ADD CONSTRAINT PK__Students__Id PRIMARY KEY(Id)




TRUNCATE TABLE Students