
CREATE TABLE Customers(
  CustomerID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100) UNIQUE,
  Address VARCHAR(200)
  


);

INSERT INTO Customers(Name,Email,Address)
VALUES("Amit kumar","kumar@23","kalimori")
,("tabreez ali","ali120","hyderabad "),
("bakir","ali1210","hyderabad ");

-- 1. to see whole table 
SELECT*FROM Customers;
-- 2.TO retrieve or see specific coloumns
SELECT CustomerID,Name FROM Customers;
-- 3 to select unique data in coloumns
SELECT DISTINCT Address FROM Customers;
-- 4 filtering  data 
SELECT*FROM Customers where Address LIKE '%hyderabad%';
SELECT*FROM Customers  where Name="Azan ali" AND Address LIKE"%hyderabad%";
SELECT*FROM Customers where Address not LIKE'%hyderabad%';
-- 4 sorting in ascending
SELECT*FROM Customers ORDER BY Name ASC;
SELECT*FROM Customers ORDER BY CustomerID DESC;