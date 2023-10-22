#Report the account representative for each customer.
SELECT customerNumber as ` Customer ID`,
	CustomerName as `Customer Name`,                                                   #This block of indented code selects the columns we want to select from the tables "customers" and "employees"
	concat(ContactFirstName," ",ContactLastName) AS `Customer Contact`,                # All the AS ` ` functions are  to clean the columns Names up and make them easier to read on the report.
	Phone AS `Customer Phone Number`,
	SalesRepEmployeeNumber AS `Account Representative ID`,
	CONCAT(Employees.FirstName," " ,Employees.LastName) as `Account Representative Name`,  #Here the Employees. function before a column name highlights the table i will be pulling the column from.
	Employees.Email AS `Account Representative Email`
FROM Customers
JOIN Employees ON Customers.SalesRepEmployeeNumber = Employees.EmployeeNumber	  # This Join function specifys which table i want to join and the ON function highlight Which Foriegn Key to Primary Key to use.
																				  # Using just the JOIN command defaults to a LEFT JOIN by default
Limit 10;                                                                                        