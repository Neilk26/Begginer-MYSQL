#Report the name and city of customers who don't have sales representatives?
SELECT CustomerName,CITY
From Customers
Where SalesRepEmployeeNumber IS NULL;
