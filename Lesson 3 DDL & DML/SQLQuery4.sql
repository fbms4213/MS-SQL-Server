INSERT Students VALUES 
('Resul', 'Qasimov', 'FBMS_4213', 'resul@gmail.com', 1, '2006-02-23', 8),
('Emin', 'Novruz', 'FBMS_4213', 'emin@gmail.com', 1, '2007-09-05', 9)


INSERT INTO Students VALUES 
('Resul', 'Qasimov', 'FBMS_4213', 'resul@gmail.com', 1, '2006-02-23', 8),
('Emin', 'Novruz', 'FBMS_4213', 'emin@gmail.com', 1, '2007-09-05', 9)




INSERT INTO  
Students(FirstName, LastName, Email, Gender, Score)
VALUES 
('Resul', 'Qasimov', 'resul@gmail.com', 1, 8),
('Emin', 'Novruz', 'emin@gmail.com', 1, 9)




UPDATE Students
SET FirstName = 'Resul'
WHERE Id = 15


UPDATE Students
SET FirstName = 'Emin', [Group] = 'FBMS_4214'
WHERE Id = 16




DELETE Students
WHERE Id = 6



SELECT * FROM Students