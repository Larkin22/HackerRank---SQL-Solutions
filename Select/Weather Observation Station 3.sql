/*Query a list of CITY names from STATION with even ID numbers only.
You may print the results in any order,
but must exclude duplicates from your answer.*/

SELECT DISTINCT CITY FROM STATION WHERE MOD(ID, 2)=0;
