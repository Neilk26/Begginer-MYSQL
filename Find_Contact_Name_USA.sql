# Display the full name of point of contact each customer in the United States in upper case, along with their phone number, sorted by alphabetical order of customer name

SELECT CustomerName as Customer_Name,UCASE(concat(contactFirstName,' ',contactLastname)) as Contact_Name, Phone,country
from customers
where Country ="USA"
Order by CustomerName;