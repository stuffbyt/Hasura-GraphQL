SELECT 
    artist.artist_id,
    artist.name,
    COUNT(album.album_id) AS AlbumCount
FROM 
    artist
LEFT JOIN 
    album ON artist.artist_id = album.artist_id
GROUP BY 
    artist.artist_id, artist.name
ORDER BY 
    AlbumCount DESC
LIMIT 1;

# answer: Iron Maiden