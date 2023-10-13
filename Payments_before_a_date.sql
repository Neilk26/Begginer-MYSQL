#QUESTION: Report the total number of payments received before October 28, 2004.alter

Select count(paymentdate)
from payments
where paymentdate <"2004-10-28";                      #this <"" command will give the count amount before the date in question. 