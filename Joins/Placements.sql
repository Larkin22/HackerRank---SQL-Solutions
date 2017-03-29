/*You are given three tables: Students, Friends and Packages.

- Students contains two columns: ID and Name.
- Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend).
- Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

Write a query meeting these conditions:

1. Output the names of those students whose best friends got offered a higher salary than them.

2. Names must be ordered by the salary amount offered to the best friends.

3. It is guaranteed that no two students got same salary offer.

Now,
Samantha's best friend got offered a higher salary than her at 11.55
Julia's best friend got offered a higher salary than her at 12.12
Scarlet's best friend got offered a higher salary than her at 15.2
Ashley's best friend did NOT get offered a higher salary than Ashley
The name output, when ordered by the salary offered to their friends, will be:
Samantha, Julia, Scarlet*/

SELECT Suckers.Name
FROM Students as Suckers, Friends, Packages as P1, Packages as P2
WHERE Suckers.ID = Friends.ID AND Friends.Friend_ID = P2.ID  /* Condition 2 */
      AND Friends.ID = P1.ID AND P1.Salary < P2.Salary /* Condition 3 */
ORDER BY P2.Salary;  /* Condition #2 */
