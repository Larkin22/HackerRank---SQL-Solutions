/*Given the CITY and COUNTRY tables, query the sum of the populations
of all cities where the CONTINENT is 'Asia'.*/

SELECT SUM(CITY.POPULATION) FROM COUNTRY
INNER JOIN CITY
    ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE COUNTRY.CONTINENT = 'ASIA';
