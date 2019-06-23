SELECT
	t.trip_id,
	t.duration
FROM
	trips t
JOIN 
	weather w
ON
	DATE(w.date) = DATE(t.start_date)
WHERE
	events = 'Rain'
GROUP BY
	1,2
ORDER BY
	duration DESC
LIMIT 3;


	

