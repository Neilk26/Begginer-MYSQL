SELECT DISTINCT SalesRepEmployeeNumber,COUNTRY FROM customers Where country IN("ITALY","FRANCE","SPAIN"); # USE THE IN OPERATOR NOT OR WHEN SEARCHING FOR MULTIPLE RESULTS/CONDITIONS FROM THE SAME COLUMN.

select LastName,FirstName,Email from Employees where EmployeeNumber IN(1370,1337,1702,1401);