-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT DISTINCT Invoice.BillingCountry
FROM Invoice
ORDER BY Invoice.BillingCountry

-- ORDER BY only necessary to alphabetize