#Show the full office address and phone number for each employee.

SELECT EmployeeNumber AS `Employee Number`,                                      # All the AS `` commands in this section of code is to present cleaner looking results when the code is ran.
CONCAT(firstName," ",LastName) AS `Employee Name`,                                
JobTitle AS `Job Title`,
Offices.OfficeCode AS `Office Code`,                                             # Here i have started to select which data i want pulling from the Offices table for when the JOIN function is called.
Offices.Addressline1 AS `Address Line 1`,
Offices.AddressLine2 AS `Address Line 2`,
Offices.State,
Offices.Country,
CONCAT(Offices.Phone," ",Employees.Extension) 
AS `Office Phone Number + Extension Number` 								     # Here i Concat two Columns from both tables to make a complete phone number and employee extension.
FROM employees
JOIN Offices                                                                     # Here is the details of which table i want to join the data from ( it matches the table in the SELECT call's)
ON employees.officecode = offices.officecode                                     # Here is the Foriegn Key to Primary Key link between the two tables.
Limit 10; #OFFSET 10;     														 # I Put a limit of 10 people per query to stop the results being so heavy, the next 10 can be viewed by adding a OFFSET 10 function being added	                                                  					
