-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.



-- INCOMPLETE

SELECT Track.Name as "Track Name", Album.Title as "Album Title", Genre.Name as "Genre", MediaType.Name as "Media Type"
FROM Track
LEFT JOIN Album
ON Album.AlbumId = Track.AlbumId
LEFT JOIN MediaType
ON MediaType.MediaTypeId = Track.MediaTypeId
LEFT JOIN Genre
ON Genre.GenreId = Track.GenreId