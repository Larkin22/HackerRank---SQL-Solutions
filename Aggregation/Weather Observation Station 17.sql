/*Query the Western Longitude (LONG_W) for the smallest Northern Latitude
(LAT_N) in STATION that is greater than 38.7880.
Round your answer to 4 decimal places.*/

SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780);
