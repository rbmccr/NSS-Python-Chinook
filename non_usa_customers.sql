--Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

SELECT Customer.FirstName, Customer.LastName, Customer.CustomerId, Customer.Country
From Customer