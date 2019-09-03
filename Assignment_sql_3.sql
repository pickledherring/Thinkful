SELECT
	mintemperaturef
FROM
	weather
WHERE
	events LIKE 'Rain' AND
	zip=94301
;