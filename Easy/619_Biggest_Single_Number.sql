-- SELECT (
--     SELECT NUM
--     FROM MYNUMBERS
--     GROUP BY NUM
--     HAVING COUNT(NUM) = 1
--     ORDER BY NUM DESC
--     LIMIT 1
-- ) AS NUM;

SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) t;
 
