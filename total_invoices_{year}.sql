-- How many Invoices were there in 2009 and 2011?

SELECT Invoice.InvoiceId, Invoice.InvoiceDate
FROM Invoice
WHERE Invoice.InvoiceDate LIKE "%2011%" OR Invoice.InvoiceDate LIKE "%2009%"

-- 166 total
