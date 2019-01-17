-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT Invoice.InvoiceId, COUNT(*) as "Line Items"
FROM Invoice
JOIN InvoiceLine
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId

-- OR....

SELECT InvoiceLine.InvoiceId, COUNT(*) as "Line Items"
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId