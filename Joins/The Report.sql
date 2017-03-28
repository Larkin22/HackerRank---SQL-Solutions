/*You are given two tables: Students and Grades.
Students contains three columns ID, Name, and Marks.

Ketty gives Eve a task to generate a report:

Conditions:
1. Ketty doesn't want the NAMES of those students who
received a grade lower than 8.

2. The report must be in descending order by grade
-- i.e. higher grades are entered first.

3. If there is more than one student with the same grade (1-10) assigned to
them, order those particular students by their name alphabetically.

4. Finally, if the grade is lower than 8, use "NULL" as their name and
list them by their marks in ascending order.

Write a query to help Eve.*/

SELECT
   CASE
       WHEN G.Grade < 8 THEN NULL /* Condition 4 */
       ELSE Suckers.Name  /* Condition #1 */
   END,
G.Grade, Suckers.Marks FROM Students AS Suckers
JOIN Grades AS G
ON Suckers.Marks >= G.Min_Mark AND Suckers.Marks <= G.Max_Mark
ORDER BY G.Grade DESC, Suckers.Name ASC; /* Condition #2/3/4 */
