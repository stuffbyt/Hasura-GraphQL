
SELECT 
    mt.media_type_id,
    mt.name AS media_type_name,
    COUNT(t.track_id) AS track_count,
    AVG(t.milliseconds) / 1000.0 AS avg_run_time_seconds
FROM 
    media_type mt
LEFT JOIN 
    track t ON mt.media_type_id = t.media_type_id
GROUP BY 
    mt.media_type_id, mt.name
ORDER BY 
    track_count DESC;



###answer###
1
MPEG audio file
3034
265.5742887277521420
2
Protected AAC audio file
237
281.7238734177215190
3
Protected MPEG-4 video file
214
2342.9404252336448600
5
AAC audio file
11
276.5069090909090910
4
Purchased AAC audio file
7
260.8947142857142860