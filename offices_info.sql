show databases;                                            
use classicmodels;
DROP TABLE IF EXISTS offices;                              #This is used to delete the specified table i have done this to make sure there is no duplicate before creating my office's table in the data base for this training exercise.
create table offices (
OfficeCode varchar(10) NOT NULL,
City varchar(50) NOT NULL,                                 #This is used to create the collums in the Table
Phone varchar (50) NOT NULL,
AddressLine1 varchar (50) NOT NULL,
State varchar(50) ,
Country varchar(50) NOT NULL,
PostalCode varchar (50) NOT NULL,
Territory varchar(50) NOT NULL,
primary key (OfficeCode)
);
INSERT INTO offices (OfficeCode, City, Phone, AddressLine1, Country, PostalCode, Territory) VALUES ('1235', 'Bangalore', '+919999', '1, Mg Road', 'India', 'ws27 89kp', 'Asia');   #This is how you enter data into the collums you have created and selected.
SELECT officecode,city,postalcode FROM offices;                       #This is how you display data you have selected from certain collums in the Table.
