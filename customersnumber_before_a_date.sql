#QUESTION: Retrieve the list of customer numbers for customer who have made a payment before October 28, 2004.

select distinct customernumber
from payments
where paymentdate <"2004-10-28"
order by customernumber;                            # the order by command has put the results in a ascending order.