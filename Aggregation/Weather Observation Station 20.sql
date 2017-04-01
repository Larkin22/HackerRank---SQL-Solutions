/*A median is defined as a number separating the higher half of a data
set from the lower half. Query the median of the Northern Latitudes (LAT_N)
from STATION and round your answer to 4 decimal places.

- Review of data shows values in that column have lengths of seven.

- Know thy self joins as they are occasionally handy

/*The function SIGN returns the sign for the numeric expression.
It returns a value of -1 for negative expressions, a value of 0 for zero
expressions and a value of +1 for positive expressions.
If the expression is NULL then the return value is also NULL
Return type of SIGN is float.

Example: SELECT SIGN(-20)
Output: -1
*/

/*Often, longitude values are considered the x-coordinate (X),
while latitude values are the y-coordinate (Y).*/

SELECT ROUND(X.LAT_N, 4)
FROM STATION AS X, STATION AS Y /*Self join*/
GROUP BY X.LAT_N
HAVING SUM(SIGN(1-SIGN(Y.LAT_N - X.LAT_N)))/COUNT(X.LAT_N) > 0.5
LIMIT 1;

/* OUTPUT: 83.8913 */
