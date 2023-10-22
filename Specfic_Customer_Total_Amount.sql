# Report total payments for Atelier graphique.

SELECT Customers.CustomerNumber AS `Customer Number`,
	Customers.CustomerName AS `Customer Name`,
	CONCAT('$',SUM(Amount)) AS `Payment Total`                       # THE SUM() within the CONCAT function will total up the amounts into one number incase there is more than 1 transaction.
																	 # THE '$' will put the Dollar symbol  the rows of data before the Amount columns data.  
FROM Payments 
JOIN Customers 
ON Payments.CustomerNumber = Customers.CustomerNumber
WHERE Customers.CustomerName = "Atelier graphique"
GROUP BY `CUSTOMER NAME`,`CUSTOMER NUMBER`;