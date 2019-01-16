-- Provide a query that shows the # of invoices per country.

SELECT Invoice.BillingCountry, COUNT() as "Invoices"
FROM Invoice
GROUP BY BillingCountry