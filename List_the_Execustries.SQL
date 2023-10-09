#What are the names of executives with VP or Manager in their title? Use the CONCAT function to combine the employee's first name and last name into a single field for reporting.

Select  Concat(Firstname," ",LastName) as Executives       #Select Concat() will merge the listed columns within the () together the " " is for a space in the display, i have added the AS function in to name the new combined data column Executives
from Employees
where JobTitle Like "%President%" OR Jobtitle like "%VP%";