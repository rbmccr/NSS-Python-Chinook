-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT Track.TrackId as "Track ID", Track.Name as "Track Name", SUM(InvoiceLine.Quantity) as "Total Sold"
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.TrackId
ORDER BY "Total Sold" DESC, Track.Name
LIMIT 5;