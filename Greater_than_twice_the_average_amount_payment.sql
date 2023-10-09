#List all payments greater than twice the average payment.
select *                                                             #This returns all of the row of data, change the * to what column you would like specfically if not all.
from payments 
where amount  > 2* (SELECT AVG(amount) FROM payments);               #The where amount > 2* will filter the results where its more than 2* the average from the amount in the payment table 
																	 #(SELECT AVG(amount) FROM payments) Will figure out the average in the amount column in the payments table.
                                                                     
 