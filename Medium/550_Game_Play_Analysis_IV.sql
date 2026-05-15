SELECT
    ROUND(
        COUNT(DISTINCT player_id)::NUMERIC
        /
        (SELECT COUNT(DISTINCT player_id) FROM activity),
        2
    ) AS fraction
FROM activity
WHERE (player_id, event_date) IN (
    SELECT
        player_id,
        MIN(event_date) + INTERVAL '1 day'
    FROM activity
    GROUP BY player_id
);
 
