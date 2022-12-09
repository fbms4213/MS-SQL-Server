CREATE DATABASE Academy

USE Academy

CREATE TABLE People(
	Id int PRIMARY KEY IDENTITY(1, 1),
	FirstName nvarchar(30) NOT NULL,
	LastName nvarchar(30) NOT NULL DEFAULT 'Empty',
	UserName nvarchar(30) NOT NULL UNIQUE,
	Age int NOT NULL CHECK(Age > 0)
)

INSERT People (FirstName, UserName, Age)
VALUES ('Vasif', 'killerVasif', 18)


--INSERT People (FirstName, UserName, Age)
--VALUES ('Vasif', 'killerVasif1', -1)



SELECT * FROM People





-- DROP and ADD PRIMARY KEY Constraint
ALTER TABLE People
DROP CONSTRAINT PK__People__3214EC0790A72346


ALTER TABLE People
ADD CONSTRAINT PK__People__Id PRIMARY KEY(Id)





-- DROP and ADD UNIQUE Constraint
ALTER TABLE People
DROP CONSTRAINT UQ__People__C9F28456A98B5572


ALTER TABLE People
ADD CONSTRAINT UQ__People__UserName UNIQUE(UserName)





-- DROP and ADD CHECK Constraint
ALTER TABLE People
DROP CONSTRAINT CK__People__Age__267ABA7A


ALTER TABLE People
ADD CONSTRAINT CK__People__Age CHECK(Age > 0)





-- DROP and ADD DEFAULT Constraint
ALTER TABLE People
DROP CONSTRAINT DF__People__LastName__25869641


ALTER TABLE People
ADD CONSTRAINT DF__People__LastName DEFAULT('UNKNOWN') FOR LastName