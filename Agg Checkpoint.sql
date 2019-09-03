SELECT
	maxtemperaturef,
	date,
	zip
FROM
	weather
ORDER BY maxtemperaturef DESC;

SELECT
	start_station,
	COUNT(*)
FROM
	trips
GROUP BY start_station;

SELECT
    duration
FROM
    trips
ORDER BY duration;

SELECT
	AVG(duration),
	end_terminal
FROM
	trips
GROUP BY end_terminal;