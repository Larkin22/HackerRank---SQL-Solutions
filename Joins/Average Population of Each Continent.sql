/*Given the CITY and COUNTRY tables, query the names of all the continents
(COUNTRY.Continent) and their respective average city populations
(CITY.Population) rounded down to the nearest integer.
(If rounded up, use CEIL)*/

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
INNER JOIN CITY
    ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
