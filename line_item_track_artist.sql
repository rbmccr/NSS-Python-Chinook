-- Provide a query that includes the purchased track name AND artist name with each invoice line item

SELECT InvoiceLine.InvoiceLineId, Track.Name, Artist.Name as "Artist Name"
FROM InvoiceLine
LEFT JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
LEFT JOIN Album
ON Album.AlbumId = Track.AlbumId
LEFT JOIN Artist
ON Artist.ArtistId = Album.ArtistId
ORDER BY Artist.Name

-- returns 2240 lines