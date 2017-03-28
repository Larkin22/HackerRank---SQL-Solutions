/*Query the list of CITY names ENDING with vowels (i.e., a, e, i, o, or u)
from STATION. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY FROM STATION WHERE RIGHT(city, 1) in ('a', 'e', 'i', 'o', 'u')
