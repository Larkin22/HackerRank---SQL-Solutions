/*Query the list of CITY names from STATION that either do not start with
vowels OR do not end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(city,1) NOT IN ('a', 'e', 'i', 'o', 'u')
OR RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');
