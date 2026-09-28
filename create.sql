CREATE TABLE Employees(
    SNO INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    PhoneNO INTEGER NOT NULL,
    Fraud TEXT NOT NULL    
);

INSERT INTO Employees(Name, PhoneNO, Fraud)
VALUES
('Rahul', '3892109934', 'False'),
('Sheela', '282901445', 'True'),
('Karan', '2345609934', 'False'),
('Meera', '8930582203', 'False'),
('Rajesh','2205503093', 'True');

SELECT * FROM Employees;
SELECT * FROM Employees WHERE Fraud = 'True';