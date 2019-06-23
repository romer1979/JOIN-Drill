SELECT 
	DATE(t.start_date),
	MAX(t.duration) trip_lenght
FROM
	trips t
JOIN
	weather w
ON
	DATE(w.date)=DATE(t.start_date)
WHERE
	w.events = 'Rain'
Group BY 1;
