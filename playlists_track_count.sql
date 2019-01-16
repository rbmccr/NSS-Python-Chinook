-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT Playlist.PlaylistId, Playlist.Name as "Playlist", COUNT() as "# of Tracks"
FROM Playlist
JOIN PlaylistTrack
ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
JOIN Track
ON Track.TrackId = PlaylistTrack.TrackId
GROUP BY Playlist.PlaylistId

-- returns 14 rows
-- some provided below:
-- 1. Music: 3290
-- 3 TV Shows: 213
-- 16. Grunge: 15
-- 9. Music Videos: 1
-- 18: On-The-Go 1: 1