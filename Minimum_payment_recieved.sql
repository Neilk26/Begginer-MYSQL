#What is the minimum payment received?

#Method 1 ( Simple result)
SELECT MIN(amount) AS minimum_payment_received
FROM payments;



#Method 2   (more detailed result erase the # if you wish to use)
#select * from payments             
#order by amount      #This ORDER BY call makes the query order the results but ascending order from smallest to largest amounts in the amount column
#Limit 1;             #By putting a Limit on the query it only will return the selected amount of results in this case 1 result which is the smallest / minimum amount.