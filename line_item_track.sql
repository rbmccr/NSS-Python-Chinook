-- Provide a query that includes the purchased track name with each invoice line item.

SELECT InvoiceLine.InvoiceId, Track.Name
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId