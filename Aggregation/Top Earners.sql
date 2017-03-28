/*Write a query to find the maximum total earnings for all employees as well
as the total number of employees who have maximum total earnings.
Then print these values as 2 space-separated integers.*/

SELECT SALARY*MONTHS AS TOTAL_EARNINGS, COUNT(*) AS TOP_EARNERS
FROM EMPLOYEE GROUP BY 1 ORDER BY 1 DESC LIMIT 1;
