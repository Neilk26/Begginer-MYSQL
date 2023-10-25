#How many orders have been placed by Herkku Gifts?

Select Customers.CustomerName,                                      #This Pulls the CUstomer Name from the customers Table
COUNT(orders.orderNumber) AS `Number of Orders`                     #This Counts the amount of orders from the orders table.
from orders
Join Customers ON orders.CustomerNumber = Customers.CustomerNumber   #This preforms a INNER JOIN of the customers and orders tables on the CustomerNumber columns.
Where Customers.CustomerName = "Herkku Gifts"                        #This Filters down to the Customers who's name matchs what we are searching for
Group By CustomerName                                               #Finally this groups all the of the above together into one result instead of potentially. multiple of the same.
