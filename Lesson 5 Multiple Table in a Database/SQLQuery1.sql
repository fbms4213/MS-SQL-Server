CREATE DATABASE Academy

USE Academy


-- One to many

CREATE TABLE Groups(
	Id int PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(20) NOT NULL,
	CreatedDate datetime2 NULL
)



CREATE TABLE Students(
	Id int PRIMARY KEY IDENTITY(1,1),
	FirstName nvarchar(20) NOT NULL,
	LastName nvarchar(20) NOT NULL,
	DateOfBirth date NOT NULL,
	Score float NULL,
	GroupId int FOREIGN KEY REFERENCES Groups(Id)
)



--PRINT SYSDATETIME()

INSERT Groups VALUES ('FBAS4214', NULL)

UPDATE Groups
SET CreatedDate = '2021-11-15'










INSERT Students 
VALUES ('Vasif', 'Babazade', '2004-02-10', NULL, 2)




SELECT * FROM Groups
SELECT * FROM Students



SELECT * FROM Students, Groups


SELECT * FROM Students, Groups
WHERE GroupId = Groups.Id


SELECT Students.FirstName, DateOfBirth, [Name] 
FROM Students, Groups
WHERE GroupId = Groups.Id









-- One to one


CREATE TABLE Countries(
	Id int PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(20) NOT NULL,
)

CREATE TABLE Capitals(
	Id int PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(20) NOT NULL,
	CountryId int NOT NULL UNIQUE
)


ALTER TABLE Capitals
ADD CONSTRAINT FK__Capitals__CountryId__Countries__Id
FOREIGN KEY(CountryId) REFERENCES Countries(Id)


ALTER TABLE Capitals
DROP CONSTRAINT FK__Capitals__CountryId__Countries__Id


INSERT Countries VALUES('Turkey')
INSERT Capitals VALUES('Ankara', 3)

INSERT Countries VALUES('Azerbaijan')
INSERT Capitals VALUES('Baku', 1)

INSERT Countries VALUES('Russia')
INSERT Capitals VALUES('Moscov', 2)


SELECT * FROM Countries
SELECT * FROM Capitals



TRUNCATE TABLE Countries
TRUNCATE TABLE Capitals


SELECT Capitals.Id, Countries.[Name], Capitals.[Name]  
FROM Capitals, Countries
WHERE Capitals.CountryId = Countries.Id














-- Many to many
-- Authors, Books, AuthorsBooks

CREATE TABLE Authors(
	Id int PRIMARY KEY IDENTITY(1,1),
	FirstName nvarchar(20) NOT NULL,
	LastName nvarchar(20) NOT NULL,
	DateOfBirth date NOT NULL
)


CREATE TABLE Books(
	Id int PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(30) NOT NULL,
	Genre nvarchar(20) NOT NULL,
	Pages smallint NOT NULL,
	Price money
)




CREATE TABLE AuthorsBooks(
	AuthorId int NOT NULL REFERENCES Authors(Id),
	BookId int NOT NULL FOREIGN KEY REFERENCES Books(Id)
)


INSERT Authors VALUES
('Vasif', 'Babazade', '2004-02-10'),
('Isa', 'Memmedli', '2003-12-08'),
('Emin', 'Novruz', '2007-09-05')



INSERT Books VALUES
('Saat 4:20', 'Dram', '30', 10.5),
('What is .NET', 'Programming', '99', 20.0),
('PostgreSQL', 'SQL', '58', 13.7),
('Dede Qorqud nagillari', 'Kid', '25', 100.7)




INSERT AuthorsBooks VALUES
(1, 2),
(2, 4),
(2, 3),
(3, 4)


SELECT * FROM Authors
SELECT * FROM Books
SELECT * FROM AuthorsBooks





SELECT Authors.FirstName, Books.[Name] 
FROM Authors, Books, AuthorsBooks
WHERE AuthorsBooks.BookId = Books.Id AND AuthorsBooks.AuthorId = Authors.Id








-- ON UPDATE
-- ON DELETE

-- 1) NO ACTION
-- 2) CASCADE
-- 3) SET NULL
-- 4) SET DEFAULT



ALTER TABLE Students
ADD CONSTRAINT FK__Students__GroupId__Groups__Id
FOREIGN KEY(GroupId) REFERENCES Groups(Id)
ON DELETE SET DEFAULT
ON UPDATE NO ACTION


ALTER TABLE Students
DROP CONSTRAINT FK__Students__GroupId__Groups__Id



INSERT Students VALUES 
('Vasif', 'Babazade', '2004-02-10', NULL,  8),
('Isa', 'Memmedli', '2003-12-08', NULL,  8)

INSERT Groups VALUES ('FBAS4214', '2021-11-15')




SELECT * FROM Groups
SELECT * FROM Students



DELETE Students
WHERE FirstName = 'Isa' OR FirstName = 'Vasif'


DELETE Groups
WHERE [Name] = 'FBAS4214'

