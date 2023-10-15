#EXERCISE: Retrieve details of all the customers in the United States who have made payments between April 1st 2003 and March 31st 2004.
select * 
from customers
 where country ='USA'
 IN(select distinct CustomerNumber from payments where paymentDate >='2003-04-01' and paymentDate <='2004-03-31');


#First of all i created the query  select distinct CustomerNumber from payments where paymentDate >='2003-04-01' and paymentDate <='2004-03-31'; to find the customer numbers for the date range asked.

#After this i created a new Query that  consisted of select * from customers where country ='USA' to norrow down the results to 'USA' being the country.

#After this i put the Query from step 1 into a IN () command so that it used the data recived (the customernumber (which is a foriegn key in the payments table to the Primary key in the Customers table) of the customers which placed a order in the date range recieved).

#The linking of these two queries will give the desired results from the question asked.