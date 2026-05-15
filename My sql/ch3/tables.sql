-- 1. Create the table
CREATE TABLE Students (
  studentsID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100), 
  Age TINYINT,
  Email VARCHAR(100), 
  JoinDate DATE
);

-- 2. Insert data
INSERT INTO Students (Name, Age, Email, JoinDate)
VALUES ('Azanali', 22, 'ali@emil.com', '2024-02-20');

-- 3. Alterations
ALTER TABLE Students ADD COLUMN city VARCHAR(50);
ALTER TABLE Students MODIFY Age SMALLINT;  
ALTER TABLE Students RENAME COLUMN Email TO Studentemail;

-- 4. Final selection
SELECT * FROM Students;