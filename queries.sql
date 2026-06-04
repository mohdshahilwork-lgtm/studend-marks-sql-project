CREATE TABLE Student (
    Roll INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Marks (
    Roll INT,
    Marks INT
);

INSERT INTO Student VALUES
(1,'RAM'),
(2,'SHYAM'),
(4,'MOHAN'),
(6,'SOHAN'),
(9,'ROHAN'),
(10,'RAJU');

INSERT INTO Marks VALUES
(1,34),
(2,23),
(3,40),
(7,36),
(9,29),
(10,30);

SELECT *
FROM Student s
INNER JOIN Marks m
ON s.Roll = m.Roll;
SELECT * FROM Student;
SELECT * FROM Marks;
INSERT INTO Student VALUES (11,'AMAN');
UPDATE Student
SET Name = 'AMAN KHAN'
WHERE Roll = 11;
SELECT * FROM Marks
WHERE Marks > 30;
SELECT * FROM Marks
ORDER BY Marks DESC;
SELECT COUNT(*) AS Total_Students
FROM Student;
SELECT MAX(Marks) AS Highest_Marks
FROM Marks;
SELECT AVG(Marks) AS Average_Marks
FROM Marks;
SELECT s.Roll, s.Name, m.Marks
FROM Student s
LEFT JOIN Marks m
ON s.Roll = m.Roll
WHERE m.Marks > 25;
-- Find Students whose Marks are Missing (NULL)

SELECT s.Roll,
       s.Name,
       m.Marks
FROM Student s
LEFT JOIN Marks m
ON s.Roll = m.Roll
WHERE m.Marks IS NULL;

-- Show 'Not Available' instead of NULL

SELECT s.Roll,
       s.Name,
       IFNULL(m.Marks,'Not Available') AS Marks
FROM Student s
LEFT JOIN Marks m
ON s.Roll = m.Roll;