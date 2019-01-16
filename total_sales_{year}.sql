-- What are the respective total sales for each of those years?

SELECT Invoice.InvoiceId, Invoice.InvoiceDate
FROM Invoice
WHERE Invoice.InvoiceDate  BETWEEN DATETIME('2009-01-01 00:00:00') AND DATETIME('2009-12-31 23:59:59')

SELECT Invoice.InvoiceId, Invoice.InvoiceDate
FROM Invoice
WHERE Invoice.InvoiceDate  BETWEEN DATETIME('2011-01-01 00:00:00') AND DATETIME('2011-12-31 23:59:59')