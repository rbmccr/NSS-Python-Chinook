-- Provide a query that shows the most purchased track of 2013.


-- NOTE: Multiple songs from 2013 sold two copies.
-- As a result, only one result is returned

SELECT "Track", MAX("Total") as "Copies Sold"
FROM (
	SELECT Track.Name as "Track", SUM(InvoiceLine.Quantity) as "Total"
	FROM Track
	JOIN InvoiceLine
	ON InvoiceLine.TrackId = Track.TrackId
	JOIN Invoice
	ON Invoice.InvoiceId = InvoiceLine.InvoiceId
	WHERE Invoice.InvoiceDate BETWEEN DATETIME("2013-01-01 00:00:00") AND DATETIME("2013-12-31 23:59:59")
	GROUP BY "Track" -- May not be best practice to group by name
);