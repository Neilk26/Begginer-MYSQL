#Report total payments for October 28, 2004.
Select sum(amount)                            #Select Sum will add All the numbers in the amount column together
from Payments
Where paymentdate = "2004-10-28";             #The filter on the paymentdate column makes it so the above SUM call only adds together the amount column from the date within the "",