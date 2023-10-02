USE classicmodels;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
EmployeeNumber Int(11) NOT NULL,
LastName varchar(50) NOT NULL,
FirstName varchar(50) NOT NULL,
ExtensionNumber varchar(50) NOT NULL,
Email varchar(100) NOT NULL,
OfficeCode varchar (10) NOT NULL,
ReportsTo INT(11) DEFAULT NULL,
JobTitle Varchar (100) NOT NULL,
PRIMARY KEY (EmployeeNumber),
FOREIGN KEY (ReportsTo) REFERENCES employees (EmployeeNumber),
FOREIGN KEY (OfficeCode) REFERENCES OFFICES (OfficeCode)
);

