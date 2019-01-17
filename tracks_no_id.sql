-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT Track.Name as "Track Name", Album.Title as "Album Title", Genre.Name as "Genre", MediaType.Name as "Media Type"
FROM Track
JOIN Album
ON Album.AlbumId = Track.AlbumId
JOIN MediaType
ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre
ON Genre.GenreId = Track.GenreId

-- returns 3503 rows