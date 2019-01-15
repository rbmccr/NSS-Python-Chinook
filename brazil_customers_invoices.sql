-- Provide a query showing the invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
From Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
Where Customer.Country = "Brazil"