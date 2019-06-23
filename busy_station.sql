SELECT
	status.station_id,
	stations.name,
COUNT(*) busy_count
FROM
	status
JOIN 
	stations
ON
	stations.station_id = status.station_id
WHERE
	docks_available = 0
GROUP BY 1,2
ORDER BY busy_count DESC
LIMIT 1;
	


	

