-- Provide a query only showing the Customers from Brazil.

SELECT Customer.FirstName, Customer.LastName, Customer.CustomerId, Customer.Country
From Customer
WHERE Customer.Country = "Brazil"