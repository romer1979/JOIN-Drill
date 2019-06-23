SELECT
	s.name,
	COUNT(*),
	s.dockcount
FROM
	stations s
JOIN
	trips t
ON
	t.start_station = s.name
GROUP BY 1,3
ORDER By s.dockcount DESC;



	

