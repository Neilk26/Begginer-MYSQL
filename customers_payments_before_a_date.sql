#QUESTION: Report the number of customer who have made payments before October 28, 2004.

Select count(distinct customernumber)                                   # we use the distinct function incase the same customer has made more than 1 payment.
from payments
where paymentdate <"2004-10-28";