--Problem 1

WITH
	rain
AS (
	SELECT 
		DATE(date) date
	FROM weather
	WHERE events LIKE 'Rain'
)
SELECT
	duration,
	DATE(start_date) date
FROM
	trips
JOIN
	rain
ON DATE(trips.start_date) = rain.date
ORDER BY trips.duration DESC;

--Problem 2

SELECT
	stations.name,
	COUNT(CASE WHEN status.docks_available = 0 THEN 1 END)
FROM
	status
JOIN
	stations
ON
	status.station_id = stations.station_id
GROUP BY 1;

--Problem 3

SELECT
	trips.start_station,
	COUNT(*),
	stations.dockcount
FROM
	trips
JOIN
	stations
ON
	trips.start_station = stations.name
GROUP BY dockcount, start_station;

--Problem 4

rain_trip AS (
	SELECT
		DATE(trips.start_date) date, 
		trips.duration
	FROM trips
	JOIN rain
	ON DATE(trips.start_date) = rain.date)
SELECT
	rain_trip.date,
	MAX(rain_trip.duration)
FROM rain_trip
GROUP BY date
ORDER BY max DESC;