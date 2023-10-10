#A basic code that will create a data and tables with their primary and foreign keys ready for data to be input into. 

DROP DATABASE IF EXISTS ClassicModels;
CREATE DATABASE CLASSICMODELS;
USE ClassicModels;
CREATE TABLE IF NOT EXISTS Offices(
OfficeCode varchar(15) NOT NULL,
City varchar(50) NOT NULL,
Phone varchar (50) NOT NULL,                         #This will create the table for all the company office Details to be stored in.
AddressLine1 varchar(50) NOT NULL,
AddressLine2 Varchar(50),
State varchar(50),
Country varchar(50) NOT NULL,
PostalCode varchar (15) NOT NULL,
Territory Varchar(12) NOT NULL,
OfficeLocation point,
Primary Key (OfficeCode));
CREATE TABLE IF NOT EXISTS Employees(
EmployeeNumber INT NOT NULL,
LastName VARCHAR(50) NOT NULL,
FirstName VARCHAR(50) NOT NULL,                                    #This will create the table for the Employee Information to be stored in.
Extension VARCHAR(10) NOT NULL,
Email Varchar(100) NOT NULL,
ReportsTo int,
JobTitle VARCHAR(50) NOT NULL,
OfficeCode VARCHAR(10) NOT NULL,
PRIMARY KEY (EmployeeNumber),
FOREIGN KEY (ReportsTo) REFERENCES Employees (EmployeeNumber),
FOREIGN KEY (OfficeCode) REFERENCES Offices (OfficeCode));
CREATE TABLE IF NOT EXISTS Customers (
CustomerNumber INT NOT NULL,
CustomerName VARCHAR(50) NOT NULL,
ContactLastName VARCHAR(50) NOT NULL,
ContactFirstName VARCHAR(50) NOT NULL,                                   #This will create a table for all the Customers details to be stored in.
Phone VARCHAR (50) NOT NULL,
AddressLine1 VARCHAR(50) NOT NULL,
AddressLine2 VARCHAR(50)NULL DEFAULT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NULL DEFAULT NULL,
PostalCode VARCHAR(15) NULL DEFAULT NULL,
Country VARCHAR(50) NOT NULL,
SalesRepEmployeeNumber int (11) NULL,
CreditLimit DOUBLE NULL DEFAULT NULL,
CustomerLocation POINT NOT NULL,
PRIMARY KEY (CustomerNumber),
FOREIGN KEY (SalesRepEmployeeNumber) REFERENCES employees (EmployeeNumber));
CREATE TABLE IF NOT EXISTS ProductLines(
ProductLine VARCHAR(50) NOT NULL,
TextDescription VARCHAR(4000) NOT NULL,
HtmlDescription Mediumtext null default null,                          #This will create a table for all the product line information to be stored in.
Image MediumBlob null default null,
PRIMARY KEY(ProductLine)
);
CREATE TABLE IF NOT EXISTS Products(
ProductCode VARCHAR(15) NOT NULL,
ProductName VARCHAR(70) NOT NULL,
ProductScale VARCHAR(10) NOT NULL,                               #This will create a table for all the products information to be stored in.
ProductVendor VARCHAR(50) NOT NULL,
ProductDescription TEXT NOT NULL,
QuantityInStock SMALLINT NOT NULL,
BuyPrice DOUBLE NOT NULL,
MSRP DOUBLE NOT NULL,
ProductLine VARCHAR(50) NOT NULL,
PRIMARY KEY (ProductCode),
FOREIGN KEY (ProductLine) REFERENCES ProductLines (ProductLine));
CREATE TABLE IF NOT EXISTS Orders(
OrderNumber INT(11) NOT NULL,
OrderDate DATETIME NOT NULL,
RequiredDate DATETIME NOT NULL,                                           #This will create a table for all of the order information to be stored in.
ShippedDate datetime NOT NULL,
Status VARCHAR(15) NOT NULL,
Comments TEXT NULL DEFAULT NULL,
CustomerNumber INT NOT NULL,
PRIMARY KEY (OrderNumber),
FOREIGN KEY (CustomerNumber) REFERENCES Customers (CustomerNumber));
CREATE TABLE IF NOT EXISTS OrderDetails(
OrderNumber INT(11) NOT NULL,
ProductCode VARCHAR (15) NOT NULL,
QuantityOrdered INT(11) NOT NULL,                                      #This will create a table for all the order details to be stored in.
PriceEach DOUBLE NOT NULL,
OrderLineNumber SMALLINT(6) NOT NULL,
PRIMARY KEY (OrderNumber, ProductCode),
FOREIGN KEY (ProductCode) REFERENCES Products (ProductCode),
FOREIGN KEY (OrderNumber) REFERENCES Orders (OrderNumber));
CREATE TABLE IF NOT EXISTS Payments (
CheckNumber VARCHAR (50) NOT NULL,
PaymentDate DATETIME NOT NULL,
Amount DOUBLE NOT NULL,                                            #This will create a table to store payment information in.
CustomerNumber Int NOT NULL,
PRIMARY KEY (CheckNumber),
FOREIGN KEY (CustomerNumber) REFERENCES Customers (CustomerNumber));
















