SELECT 
    genre.genre_id,
    genre.name,
    COUNT(track.track_id) AS tracks
FROM 
    genre
LEFT JOIN 
    track ON genre.genre_id = track.genre_id
GROUP BY 
    genre.genre_id, genre.name
ORDER BY 
    tracks DESC
LIMIT 3;


#Rock: 1297
#Latin: 579
#Metal: 374