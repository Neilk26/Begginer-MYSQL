#List the order dates in descending order for orders for the 1940 Ford Pickup Truck.

Select Orders.Orderdate AS `Order Date`,
	Products.ProductCode AS `Product Code`,
	Products.ProductName AS `Product Name`,
	Orders.CUstomerNumber AS `Customer Number`,
	Customers.CustomerName AS `Customer Name`
from orderdetails
	Join Products on Orderdetails.ProductCode = Products.ProductCode 
	Join Orders on Orders.OrderNumber = Orderdetails.OrderNumber
	Join Customers on Customers.customerNumber = Orders.Customernumber
Where ProductName ="1940 Ford Pickup Truck"
Order By OrderDate DESC;